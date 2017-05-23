class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.new(user_sign_up_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_update_params)
      redirect_to '/', notice: "Successfully submited survey"
    else
      redirect_to "/users/#{@user.id}/profile"
    end
  end

  private

  def user_sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :hiv, :veteran, :immigrant, :lgbt, :gender, :age)
  end


  def user_update_params
    params.require(:user).permit(:name, :profession, :marital_status, :hiv, :veteran, :immigrant, :lgbt, :gender, :age)
  end
end
