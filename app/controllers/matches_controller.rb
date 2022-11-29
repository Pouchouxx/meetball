class MatchesController < ApplicationController
  def index
  end

  def show
    @match = Match.find(params[:id])
   #@booking = Booking.new
  end

  def new
    @match = Match.new

  end

  def create
    @match = Match.new(match_params)
    @match.user = current_user
    @match.save
    redirect_to match_path(@match)
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
