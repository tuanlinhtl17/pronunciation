# frozen_string_literal: true

module SessionsHelper
  def is_admin?
    current_user.is_admin?
  end

  def logged_in?
    user_signed_in?
  end

  def user_authenticated?
    unless logged_in?
      flash[:danger] = 'You must login first'
      redirect_back_or root_path
    end
    true
  end

  def redirect_back_or(default)
    redirect_to session[:forwarding_url] || default
    session.delete :forwarding_url
  end

  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end
end
