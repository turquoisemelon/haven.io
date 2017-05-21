class Admin::DashboardController < ApplicationController
  def index
    @initial_state = { name: "Stranger", user_id: current_user.id}
  end
end
