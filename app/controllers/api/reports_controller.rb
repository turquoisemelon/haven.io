class Api::ReportsController < Api::UsersController
  before_action :authorize_admin

  def accuity
    @accuity = Hash.new
    @raw = Hash.new{|h,k| h[k] = Hash.new(&h.default_proc)}
      # count true
      @raw['add']['Treatment Participation'] = Report.where("user_id = ? AND meetings = false", params[:id]).count
      @raw['add']['Crises Incidents'] = Report.where("user_id = ? AND arrested = true", params[:id]).count
      @raw['add']['Medicine Compliance'] = Report.where("user_id = ? AND medicated = false", params[:id]).count
      @raw['add']['Housing'] = Report.where("user_id = ? AND indoors = false", params[:id]).count
      @raw['add']['Meets basic'] = Report.where("user_id = ? AND bathed = true", params[:id]).count
      @raw['add']['Substance Abuse'] = Report.where("user_id = ? AND drugs = true", params[:id]).count
      @raw['add']['Danger to self'] = Report.where("user_id = ? AND fights = true", params[:id]).count
      @raw['add']['Other Problems'] = Report.where("user_id = ? AND ems = false", params[:id]).count
      # count false
      @raw['subtract']['Treatment Participation'] = Report.where("user_id = ? AND meetings = true", params[:id]).count
      @raw['subtract']['Crises Incidents'] = Report.where("user_id = ? AND arrested = false", params[:id]).count
      @raw['subtract']['Medicine Compliance'] = Report.where("user_id = ? AND medicated = true", params[:id]).count
      @raw['subtract']['Housing'] = Report.where("user_id = ? AND indoors = true", params[:id]).count
      @raw['subtract']['Meets basic'] = Report.where("user_id = ? AND bathed = false", params[:id]).count
      @raw['subtract']['Substance Abuse'] = Report.where("user_id = ? AND drugs = false", params[:id]).count
      @raw['subtract']['Danger to self'] = Report.where("user_id = ? AND fights = false", params[:id]).count
      @raw['subtract']['Other Problems'] = Report.where("user_id = ? AND ems = true", params[:id]).count
      # score
      @accuity['Treatment Participation'] = @raw['add']['Treatment Participation'] - @raw['subtract']['Treatment Participation']
      @accuity['Crises Incidents'] = @raw['add']['Crises Incidents'] - @raw['subtract']['Crises Incidents']
      @accuity['Medicine Compliance'] = @raw['add']['Medicine Compliance'] - @raw['subtract']['Medicine Compliance']
      @accuity['Housing'] = @raw['add']['Housing'] - @raw['subtract']['Housing']
      @accuity['Meets basic'] = @raw['add']['Meets basic'] - @raw['subtract']['Meets basic']
      @accuity['Substance Abuse'] = @raw['add']['Substance Abuse'] - @raw['subtract']['Substance Abuse']
      @accuity['Danger to self'] = @raw['add']['Danger to self'] - @raw['subtract']['Danger to self']
      @accuity['Other Problems'] = @raw['add']['Other Problems'] - @raw['subtract']['Other Problems']

      if @accuity['Treatment Participation'] < 0
        @accuity['Treatment Participation'] = 0
      elsif @accuity['Treatment Participation'] > 5
        @accuity['Treatment Participation'] = 5
      else
      end

      if @accuity['Crises Incidents'] < 0
        @accuity['Crises Incidents'] = 0
      elsif @accuity['Crises Incidents'] > 5
        @accuity['Crises Incidents'] = 5
      else
      end

      if @accuity['Medicine Compliance'] < 0
        @accuity['Medicine Compliance'] = 0
      elsif @accuity['Medicine Compliance'] > 5
        @accuity['Medicine Compliance'] = 5
      else
      end

      if @accuity['Housing'] < 0
        @accuity['Housing'] = 0
      elsif @accuity['Housing'] > 5
        @accuity['Housing'] = 5
      else
      end

      if @accuity['Meets basic'] < 0
        @accuity['Meets basic'] = 0
      elsif @accuity['Meets basic'] > 5
        @accuity['Meets basic'] = 5
      else
      end

      if @accuity['Substance Abuse'] < 0
        @accuity['Substance Abuse'] = 0
      elsif @accuity['Substance Abuse'] > 5
        @accuity['Substance Abuse'] = 5
      else
      end

      if @accuity['Danger to self'] < 0
        @accuity['Danger to self'] = 0
      elsif @accuity['Danger to self'] > 5
        @accuity['Danger to self'] = 5
      else
      end

      if @accuity['Other Problems'] < 0
        @accuity['Other Problems'] = 0
      elsif @accuity['Other Problems'] > 5
        @accuity['Other Problems'] = 5
      else
      end

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
