class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def authenticate
    redirect_to :login unless user_signed_in?
  end

  def user_is_admin?
    flash[:notice] = "Must be an admin"
    redirect_to request.referrer unless user_is_admin
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
  end

  def user_signed_in?
    # converts current_user to a boolean by negating the negation
    !!current_user
  end

  def user_is_admin
    current_user.attributes.slice('is_admin')["is_admin"] == 1
  end

  def hello
    render html: "hello, world!"
  end
end
