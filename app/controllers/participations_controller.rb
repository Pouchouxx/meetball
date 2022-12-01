class ParticipationsController < ApplicationController
  def create
    @team = Team.find(params[:team_id])
    @previous_participation = Participation.where(team: @team.match.teams.pluck(:id), user: current_user).first
    if @previous_participation
      @previous_participation.destroy
    end
    @participation = Participation.new
    @participation.team = @team
    @participation.user = current_user
    if @participation.save
      if @team.participations.count <= 1
        @team.name = current_user.pseudo
        @team.save
      end
      redirect_to match_path(@team.match), notice: "Vous faites bien partie de la team #{@team.name}"
    else
      redirect_to match_path(@team.match), alert: "Vous n'avez pas rejoint cette équipe"
    end
  end

  def destroy

  end

  private

  def participation_params
    params.require(:participation).permit(:mvp)
  end

end
