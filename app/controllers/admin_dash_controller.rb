class AdminDashController < ApplicationController
  def index
    @initial_state = { name: "Stranger" }
  end
end
