class UsersController < ApplicationController

  def create
    @user = User.create!(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def new
    @user = User.new
  end

  def login
    @user = User.find_by_email(params[:user][:email])
    if @user && User.authenticate(params[:user][:password])
         @name = @user.first_name
         session[:user_id] = @user.id
         redirect_to user_path(@user)
    else
          flash[:notice] = "User or Password is invalid"
          redirect_to root_path
    end
  end

  def logout
    session.clear
    redirect_to root_path
  end

  def show
    @user = User.find(params[:id])
    
  end

private

  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name, :designation)
  end
end
