class ReportsController < ApplicationController
  before_action :set_report, only: [:show, :edit, :update, :destroy]

  def index
    @reports = Report.where(user_id: params[:user_id])
  end

  def show
  end

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    @report.user_id = session[:user_id]
    respond_to do |format|
      if @report.save
        format.html { redirect_to '/', notice: 'Report was successfully created.' }
      else
        puts @report.errors
        format.html { render :new }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report
      @report = Report.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def report_params
      params.require(:report).permit(:user_id, :sentiment, :meetings, :arrested, :medicated, :indoors, :bathed, :clothes, :drugs, :income, :apply_benefits, :verbal_arguments, :fights, :ems, :hospital, :medical_condition, :weeks_homeless, :notes)
    end
end
