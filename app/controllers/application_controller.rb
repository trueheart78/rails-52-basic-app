# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :require_authentication

  private

  def require_authentication
    render plain: 'Unauthenticated', status: 401 unless current_user
  end

  def current_user
    return unless session[:user]
    @current_user ||= User.find session[:user][:id]
  end

  helper_method :current_user
end
