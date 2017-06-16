module LoginHelper

def current_user?(current_user)
  current_user.id == session[:id]
end

def logged_in?
  session[:id] != nil
end

def login(user)
  session[:id] == user.id
end

end
helpers LoginHelper
