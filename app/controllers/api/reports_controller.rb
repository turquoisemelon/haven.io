class Api::ReportsController < Api::UsersController
  before_action :authorize_admin

  def accuity
    @accuity = {}
      @accuity['Treatment Participation'] = Report.where("user_id = user_id AND meetings = true").count
      @accuity['Crises Incidents'] = Report.where("user_id = user_id AND arrested = true").count
      @accuity['Medicine Compliance'] = Report.where("user_id = user_id AND medicated = true").count
      @accuity['Housing'] = Report.where("user_id = user_id AND indoors = true").count
      @accuity['Meets basic'] = Report.where("user_id = user_id AND bathed = true").count
      @accuity['Substance Abuse'] = Report.where("user_id = user_id AND drugs = true").count
      @accuity['Danger to self'] = Report.where("user_id = user_id AND fights = true").count
      @accuity['Other Problems'] = Report.where("user_id = user_id AND ems = true").count
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
