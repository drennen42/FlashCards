get '/card/:id' do
  redirect '/login' unless authenticated?
  @card = Card.find(params[:id])
  redirect '/' unless @card

  @answers = [@card.answer, @card.wrong_answer, @card.wrong_answer2, @card.wrong_answer3].shuffle

  @answer1 = @answers[0]
  @answer2 = @answers[1]
  @answer3 = @answers[2]
  @answer4 = @answers[3]

  erb :card
end

post '/cards/:id' do
  @card = Card.find(params[:id])

  result = @card.check_answer(params[:answer].to_s)
  if result == true
    flash[:notice] = "Correct!"
  else
    flash[:error] = "Incorrect! The correct answer is #{@card.answer}"
  end
  Round.find(session[:round_id]).guesses << Guess.create!(card_id: params[:id], correct?: result)

  next_card_id = session[:deck].pop
  redirect "/card/#{next_card_id}" if next_card_id
  result = @card.check_answer(params[:answer].to_s)
  if result == true
    flash[:notice] = "Correct!"
  else
    flash[:error] = "Incorrect! The correct answer is #{@card.answer}"
  end
  redirect "/round/#{session[:round_id]}"
end
