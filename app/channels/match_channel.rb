class MatchChannel < ApplicationCable::Channel
  def subscribed
    match = Match.find(params[:id])
    stream_for match
  end
end
