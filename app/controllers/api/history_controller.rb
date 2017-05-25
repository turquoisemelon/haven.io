class Api::HistoryController < Api::UsersController
  before_action :authorize_admin

  def vulnerability
    @vulnerability = {}
      @vulnerability['Survivcal skills'] = History.where("survival = true").count
      @vulnerability['Basic Needs'] = History.where("needs = true").count
      @vulnerability['Mortality Risk'] = History.where("mortality = true").count
      @vulnerability['Medical Risks'] = History.where("medical = true").count
      @vulnerability['Cognitive abilities'] = History.where("organizational = true").count
      @vulnerability['Mental Health'] = History.where("sanity = true").count
      @vulnerability['Substance Use'] = History.where("abuse = true").count
      @vulnerability['Communication ability'] = History.where("communication = true").count
      @vulnerability['Social behaviors'] = History.where("social = true").count
      @vulnerability['Length of Homelessness'] = History.where("length_homeless > 1").count
      render json: @vulnerability
  end
  helper_method :vulnerability

  def find
    user = User.find(params[:id])
    # if params[:user_id] && @user = User.find_by_id(params[:user_id])
    history = user.history#s
    render json: history 
  end   
end
