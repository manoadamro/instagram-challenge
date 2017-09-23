class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def auth
    render "auth"
  end

  def login
    
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to :controller => 'users', :action => 'auth'
    else
      render "new"
    end
  end

  def user_params
   params.require(:user).permit(:username, :email, :password, :salt, :encrypted_password)
  end
end
