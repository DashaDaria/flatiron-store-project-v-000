class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_cart

    def current_cart
      if current_user
        current_user.current_cart
      end
    end
   end

# private
#   def current_user
#     @current_user ||= User.find_by_id(session[:user])
#   end
#
#    def logged_in?
#      current_user != nil
#    end
