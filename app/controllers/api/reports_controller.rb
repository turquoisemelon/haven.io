class Api::ReportsController < Api::UsersController
  before_action :authorize_admin

  def accuity
    @accuity = {}
      @accuity['Treatment Participation'] = Report.where("user_id = ? AND meetings = true", params[:id]).count
      @accuity['Crises Incidents'] = Report.where("user_id = ? AND arrested = true", params[:id]).count
      @accuity['Medicine Compliance'] = Report.where("user_id = ? AND medicated = true", params[:id]).count
      @accuity['Housing'] = Report.where("user_id = ? AND indoors = true", params[:id]).count
      @accuity['Meets basic'] = Report.where("user_id = ? AND bathed = true", params[:id]).count
      @accuity['Substance Abuse'] = Report.where("user_id = ? AND drugs = true", params[:id]).count
      @accuity['Danger to self'] = Report.where("user_id = ? AND fights = true", params[:id]).count
      @accuity['Other Problems'] = Report.where("user_id = ? AND ems = true", params[:id]).count
     # missing  weeks_homeless: 0,
     # missing  sentiment: 5,
      render json: @accuity
  end
  helper_method :accuity

  def find
    user = User.find(params[:id])
    # if params[:user_id] && @user = User.find_by_id(params[:user_id])
    report = user.reports
    render json: report 
  end   
end
