class ClubsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :show_errors

  def index
    render json: Club.all
  end

  def create
    club = Club.new(club_params)

    if club.save
      redirect_to club_path(club.id)
    else
      render :action => 'new'
    end
  end

  def show
    render json: Club.find(params[:id])
  end

  def update
    club = Club.find(params[:id])

    if club.update(club_params)
      redirect_to club_path(club)
    else
      # TODO: Needs some explanation as to why the update failed
      render :action => 'show'
    end
  end

  def destroy
    club = Club.find(params[:id])
    club.destroy
    # TODO: Needs to redirect to a root not an index of all clubs
    redirect_to clubs_path
  end

# ---------- PRIVATE ---------- #
  private
  def club_params
    params.require(:club).permit(:name)
  end

  # TODO: Currently only handles unfound IDs
  def show_errors
    # TODO: Needs to redirect to a root not an index of all clubs
    redirect_to clubs_path
  end
end
