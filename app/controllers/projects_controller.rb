class ProjectsController < ApplicationController
  before_action :set_project, only: [:show]

  def index
    @projects = Project.all
    @featured_projects = Project.featured
    @active_projects = Project.active
    @completed_projects = Project.completed
  end

  def show
    @project = Project.find(params[:id])
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description, :detailed_description, :status, 
                                   :repo_url, :live_url, :demo_url, :category, :featured, 
                                   :start_date, :completion_date, :client_name, 
                                   :impact_statement, :image_url, screenshots: [], 
                                   technologies: [])
  end
end