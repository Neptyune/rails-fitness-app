#handle log in log out
class SessionsController < ApplicationController
  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
    if @account.save
      redirect_to account_url @account
    else
      render :new
    end
  end
end
