get '/login' do
  redirect '/' if authenticated?
  erb :"users/login"
end

post '/login' do
  @user = User.find_by(email: params[:email])
  redirect '/register' if @user.class != User
  puts session[:user_id] = @user.authenticate(params[:password])
  unless authenticated?
    flash[:error] = "Bad password. Wrong key, BITCH!"
    redirect '/login'
  else
    redirect '/'
  end
end

get '/register' do
  redirect '/login' if authenticated?
  erb :"users/register"
end

post '/register' do
  if params[:user][:password] != params[:password2]
    flash[:error] = "Passwords did not match"
    redirect '/register'
  else
    User.create!(params[:user])
    flash[:notice] = "Properly registered"
    redirect '/'
  end
end

get '/logout' do
  session[:user_id] = nil
  flash[:notice] = "Successfully logged out"
  redirect '/login'
end

get '/users/profile' do
  redirect '/' unless authenticated?
  @users = current_user
  @name = "#{@users.first_name}"
  @rounds = @users.rounds
  erb :'/users/profile'
end
