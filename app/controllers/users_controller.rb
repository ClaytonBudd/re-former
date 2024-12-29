class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    puts params
    @user = User.new(username: params[:username], email: params[:email], password: params[:password])

    if @user.save
      redirect_to_new_user_path
    else
      render :new, status: :unprocessable_entity
    end
  end

end
