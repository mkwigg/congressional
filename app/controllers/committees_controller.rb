class CommitteesController < ApplicationController
  def index
    @legislator = Legislator.find(params[:slug])
    @committees = Committee.find_committees(@legislator.bioguide_id)
  end
end
