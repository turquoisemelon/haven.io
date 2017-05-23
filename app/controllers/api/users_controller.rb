class Api::UsersController < Api::APIController
  before_action :authorize_admin

  def find
    @user = User.find(params[:id])
    render json: @user
  end

  def age
    @users = User.all.group(:age).count
    render json: @users
  end

end
