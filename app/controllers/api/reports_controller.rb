class Api::ReportsController < Api::UsersController
  before_action :authorize_admin

  def accuity
    @accuity = {}
      @accuity['Treatment Participation'] = Report.where("meetings = true").count
      @accuity['Crises Incidents'] = Report.where("arrested = true").count
      @accuity['Medicine Compliance'] = Report.where("medicated = true").count
      @accuity['Housing'] = Report.where("indoors = true").count
      @accuity['Meets basic'] = Report.where("bathed = true").count
      @accuity['Substance Abuse'] = Report.where("drugs = true").count
      @accuity['Danger to self'] = Report.where("fights = true").count
      @accuity['Other Problems'] = Report.where("ems = true").count
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
