class TeamsController < ApplicationController
  before_action :set_team_member, only: %i[ show edit update destroy ]

  def index
    @team_members = TeamMember.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @team_member = TeamMember.new
  end

  def create
    @team_member = TeamMember.new(team_member_params)

    if @team_member.save
      redirect_to teams_path, notice: "Team member was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @team_member.update(team_member_params)
      redirect_to @team_member, notice: "Team member was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @team_member.destroy!
    redirect_to teams_path, status: :see_other, notice: "Team member was successfully removed."
  end

  private

  def set_team_member
    @team_member = TeamMember.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to teams_path, alert: "Team member not found."
  end

  def team_member_params
    params.require(:team_member).permit(:name, :role, :bio, :photo, social_links: { linkedin: "", twitter: "", github: "" })
  end
end
