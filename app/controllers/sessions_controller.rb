class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    if params[:name] == nil || session[:name].empty?
      redirect_to new_sessions_path
    elsif session[:name]
      redirect_to secrets_path
    end
  end

  def destroy
    session.delete :name
  end

end
