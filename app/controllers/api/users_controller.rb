class Api::UsersController < Api::APIController
  before_action :authorize_admin

  def name
    @users = User.select("name, gender").where("admin = false")
    # @users['id'] = User.select(:gender).where("admin = false")
    render json: @users
  end

  def find
    @user = User.find(params[:id])
    render json: @user
  end

end
