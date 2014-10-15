get '/' do
  redirect '/login' unless authenticated?
  @decks = Deck.all
  erb :index
end

get '/session-viewer' do
  session.inspect
end

get '/decks/:id' do
  redirect '/login' unless authenticated?
  flash.clear
  @deck = Deck.find(params[:id])
  redirect '/' unless @deck
  @round = Round.create(deck_id: @deck.id, user_id: current_user.id)
  card_ids = @deck.shuffle.map { |card| card.id }
  session[:deck] = card_ids
  session[:round_id] = @round.id
  redirect "/card/#{session[:deck].pop}"
end

get '/round/:id' do
  redirect '/login' unless authenticated?
  @round = Round.find(params[:id])
  redirect '/' unless @round
  redirect '/' unless (@round.user_id) == current_user.id
  @stats = @round.get_stats
  @missed = @round.get_incorrect
  erb :round
end
