class MatchesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @matches = Match.all
    collection_variables
  end

  def my
    @matches = current_user.matches + current_user.matches_as_participant
    collection_variables
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
    @message = Message.new
    @team_one = @match.teams.first
    @team_two = @match.teams.last
  end

  private

  def collection_variables
    if params[:level_rating] && params[:level_rating] != "Any"
      @matches = @matches.where(level_rating: params[:level_rating])
    end

    if params[:address] && params[:address] != "Any"
      @matches = @matches.near(params[:address], 1)
    end

    if params[:date] && params[:date] == "Today"
      @matches = @matches.where(date: (Time.current..Time.current.end_of_day))
    elsif params[:date] && params[:date] == "Tomorrow"
      @matches = @matches.where(date: (Time.current.next_day.beginning_of_day..Time.current.next_day.end_of_day))
    elsif params[:date] && params[:date] == "This week"
      @matches = @matches.where(date: (Time.current..Time.current.next_day(7).end_of_day))
    elsif params[:date] && params[:date] == "Next week"
      @matches = @matches.where(date: (Time.current.next_day(7).end_of_day..Time.current.next_day(14).end_of_day))
    end

    if params[:free_slots]
      @matches = @matches.all_available
    end

    @markers = @matches.map do |match|
      {
        lat: match.latitude,
        lng: match.longitude,
        info_window: render_to_string(partial: "info_window", locals: {match: match}),
        image_url: helpers.asset_url("889455.png")
      }
    end
  end

  def match_params
    params.require(:match).permit(:level_rating, :address, :comment, :date)
  end
end
