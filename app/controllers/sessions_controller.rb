class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
      return redirect_to login_path if !session[:name].present?
    redirect_to secret_path
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end
end