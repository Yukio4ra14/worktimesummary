class WorktimesummaryController < ApplicationController
  unloadable
  before_filter :find_project,  only: :index

  def index
    @issues = Issue.where(project_id: @project)
  end
  
  private
  def find_project
    @project = Project.find(params[:project_id])
  end 
end
