class Api::UsersController < Api::APIController
  before_action :authorize_admin

  def age
    @users = {}
    @users['0-19'] = User.where("admin = false AND age < 20").count
    @users['20-29'] = User.where("admin = false AND age >= 20 AND age < 30").count
    @users['30-39'] = User.where("admin = false AND age >= 30 AND age < 40").count
    @users['40-49'] = User.where("admin = false AND age >= 40 AND age < 50").count
    @users['50-59'] = User.where("admin = false AND age >= 50 AND age < 60").count
    @users['60+'] = User.where("admin = false AND age >= 60").count
    render json: @users
  end

  def find
    @user = User.find(params[:id])
    render json: @user
  end

end
