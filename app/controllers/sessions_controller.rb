#handle log in log out
class SessionsController < ApplicationController
  skip_before_action :authorized
  def index
    p params
    # @account = Account.new
  end

  def login
    puts "VALIDATIING ---------------------------------------------------"
    @params = params
    @user = Account.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      puts "-----------------------------------------------------------------------------------HERE"
      redirect_to @user

    end
  end

  def logout
    session[:user_id] = nil
  end
end
