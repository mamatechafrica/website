class TeamsController < ApplicationController
  def index
    @team_members = TeamMember.all
    @team_member = @team.team_members.find(params[:team_member_id])
  end

  def show
    @team_member = TeamMember.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to teams_path, alert: "Team member not found."
  end

  def edit
    @team_member = TeamMember.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    @team_member = @team.team_members.find(params[:team_member_id])

    # if @team_member.update(team_member_params)
    #   redirect_to @team, notice: "Team member was successfully updated."
    # else
    #   render :edit
    # end

    if @team_member.update(team_member_params)
      redirect_to team_team_member_path(@team, @team_member), notice: "Team member updated successfully."
    else
      render :edit
    end
  end

  private

  def team_member_params
    params.require(:team_member).permit(:name, :role, :bio, :photo, social_links: %i[linkedin twitter github])
  end
end
