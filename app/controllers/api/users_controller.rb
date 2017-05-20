class Api::UsersController < ActionController::API

  def find
    @user = User.find(params[:id])
    render json: @user
  end

end
