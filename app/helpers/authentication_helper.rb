module AuthenticationHelper
  def current_user
    User.find(session[:user_id]) rescue "No one"
  end

  def is_logged_in
    !!session[:user_id]
  end
end
