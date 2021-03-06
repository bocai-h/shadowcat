class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login, except: [:not_authenticated]

  protected

  def not_authenticated
  	redirect_to root_path, alert: "please login first"
  end
end
