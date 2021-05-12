class ClubController < ApplicationController
  def index
    render json: Club.all.to_json
  end
end
