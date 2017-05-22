class Admin::DashboardController < ApplicationController
  before_action :authorize_admin

  def index
    @initial_state = { name: "Stranger", user_id: current_user.id}
  end
end
