class SecretsController < ApplicationController
  before_action :require_login
  def show
    @user = session[:name]
  end

  def require_login
    return redirect_to login_path unless session.include? :name
  end
end