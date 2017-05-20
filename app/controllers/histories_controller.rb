class HistoriesController < ApplicationController
  before_action :set_history, only: [:show, :edit, :update, :destroy]

  def index
    @histories = History.where(user_id: params[:user_id])
  end

  def show
  end

  def new
    @history = History.new
  end

  def create
    @history = History.new(history_params)
    @history.user_id = session[:user_id]
    respond_to do |format|
      if @history.save
        format.html { redirect_to '/', notice: 'History was successfully created.' }
      else
        puts @history.errors
        format.html { render :new }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_history
      @history = History.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def history_params
      params.require(:history).permit(:user_id, :user, :stolen, :friends, :clothes, :eaten, :trash, :new_conditions, :health_condition, :health_condition_note, :appointments, :depressed, :mental_health, :mental_health_note, :new_habit, :new_habit_note, :AA_NA, :social_circle, :communicate_needs, :cooperate, :created_at, :housing_situation, :comments)
    end
end


       