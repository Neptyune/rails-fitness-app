#handle log in log out
class SessionsController < ApplicationController
  before_action :authorized
  helper_method :current_user
  helper_method :logged_in?
  def index
    p params
    # @account = Account.new
  end

  def login
    @params = params
    @user = Account.find_by(username: params[:username])
    @valid = @user.authenticate(params[:password])
    if @valid
      session[:user_id] = @user.id
    end
  end

  def create
  end
end
