def current_user
  User.find(session[:user_id])
end

def authenticated?
  session[:user_id] != nil
end

def current_round
  Round.find(session[:round_id])
end
