class Api::UsersController < Api::APIController
  before_action :authorize_admin

  def find
    @user = User.find(params[:id])
    render json: @user
  end

end
