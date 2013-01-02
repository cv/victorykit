class Admin::PetitionsController < ApplicationController
  newrelic_ignore
  before_filter :require_admin

  def index
    respond_to do |format|
      format.html { }
      format.json { render json: PetitionsDatatable.new(view_context, PetitionStatisticsBuilder.new) }
    end
  end

  def new_dashboard
    respond_to do |format|
      format.html {}
      format.json { render json: PetitionsDatatable.new(view_context, PetitionReportRepository.new) }
    end
  end
end
