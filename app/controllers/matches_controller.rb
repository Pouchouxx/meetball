class MatchesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  def index
    @matches = Match.all
    @markers = @matches.geocoded.map do |match|
      {
        lat: match.latitude,
        lng: match.longitude,
        info_window: render_to_string(partial: "info_window", locals: {match: match}),
        image_url: helpers.asset_url("889455.png")

      }
    end
  end

  def show
    @match = Match.find(params[:id])
    @team_one = @match.teams.first
    @team_two = @match.teams.last
  end

  def new
    @match = Match.new
  end

  def create
    @match = Match.new(match_params)
    @match.user = current_user
    if @match.save
      redirect_to matches_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @match = Match.find(params[:id])
    @match.update(match_params)
    redirect_to match_path(@match)
  end

  def edit
    @match = Match.find(params[:id])
  end

  def destroy
    @match = Match.find(params[:id])
    @match.destroy
    redirect_to matches_path(@match), status: :see_other
  end

  def recap
    @match = Match.find(params[:id])
    
  end

  private


  def match_params
    params.require(:match).permit(:level_rating, :address, :comment, :date)
  end
end
