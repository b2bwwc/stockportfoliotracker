class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # def after_sign_in_path_for(resource)
    # return redirect_to (user_path)
  # end 

  # def after_user_sign_in
  #
  # end
  #
  # def after_admin_sign_in
  #
  # end
end
