class Admin::DashboardController < ApplicationController
  def index
    @initial_state = { name: "Stranger" }
  end
end
