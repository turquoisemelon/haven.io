class UserDashboardController < ApplicationController
  def index
    @map_initial_state = {'this.state.google'}
  end
end
