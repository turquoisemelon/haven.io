class Api::UsersController < Api::APIController
  before_action :authorize_admin

  def age
      @users = {}
    case params[:q]
    when 'veteran'
      @users['0-19'] = User.where("admin = false AND age < 20 AND veteran = true").count
      @users['20-29'] = User.where("admin = false AND age >= 20 AND age < 30 AND veteran = true").count
      @users['30-39'] = User.where("admin = false AND age >= 30 AND age < 40 AND veteran = true").count
      @users['40-49'] = User.where("admin = false AND age >= 40 AND age < 50 AND veteran = true").count
      @users['50-59'] = User.where("admin = false AND age >= 50 AND age < 60 AND veteran = true").count
      @users['60+'] = User.where("admin = false AND age >= 60 AND veteran = true").count
      render json: @users
    when 'hiv'
      @users['0-19'] = User.where("admin = false AND age < 20 AND hiv = true").count
      @users['20-29'] = User.where("admin = false AND age >= 20 AND age < 30 AND hiv = true").count
      @users['30-39'] = User.where("admin = false AND age >= 30 AND age < 40 AND hiv = true").count
      @users['40-49'] = User.where("admin = false AND age >= 40 AND age < 50 AND hiv = true").count
      @users['50-59'] = User.where("admin = false AND age >= 50 AND age < 60 AND hiv = true").count
      @users['60+'] = User.where("admin = false AND age >= 60 AND hiv = true").count
      render json: @users
    when 'male'
      @users['0-19'] = User.where("admin = false AND age < 20 AND gender = 'male'").count
      @users['20-29'] = User.where("admin = false AND age >= 20 AND age < 30 AND gender = 'male'").count
      @users['30-39'] = User.where("admin = false AND age >= 30 AND age < 40 AND gender = 'male'").count
      @users['40-49'] = User.where("admin = false AND age >= 40 AND age < 50 AND gender = 'male'").count
      @users['50-59'] = User.where("admin = false AND age >= 50 AND age < 60 AND gender = 'male'").count
      @users['60+'] = User.where("admin = false AND age >= 60 AND gender = 'male'").count
      render json: @users
      when 'female'
      @users['0-19'] = User.where("admin = false AND age < 20 AND gender = 'female'").count
      @users['20-29'] = User.where("admin = false AND age >= 20 AND age < 30 AND gender = 'female'").count
      @users['30-39'] = User.where("admin = false AND age >= 30 AND age < 40 AND gender = 'female'").count
      @users['40-49'] = User.where("admin = false AND age >= 40 AND age < 50 AND gender = 'female'").count
      @users['50-59'] = User.where("admin = false AND age >= 50 AND age < 60 AND gender = 'female'").count
      @users['60+'] = User.where("admin = false AND age >= 60 AND gender = 'female'").count
      render json: @users
    else
      @users['0-19'] = User.where("admin = false AND age < 20").count
      @users['20-29'] = User.where("admin = false AND age >= 20 AND age < 30").count
      @users['30-39'] = User.where("admin = false AND age >= 30 AND age < 40").count
      @users['40-49'] = User.where("admin = false AND age >= 40 AND age < 50").count
      @users['50-59'] = User.where("admin = false AND age >= 50 AND age < 60").count
      @users['60+'] = User.where("admin = false AND age >= 60").count
      render json: @users
    end
  end

  def find
    @user = User.find(params[:id])
    render json: @user
  end

end