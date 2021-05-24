class ClubmembersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :show_errors

  def index
    render json: Clubmember.all
  end

  def create
    club = Club.find(params[:club_id])
    member = Member.find(params[:member_id])

    clubmember = Clubmember.new(club_id: club.id, member_id: member.id)

    if clubmember.save()
      redirect_to club_path(club.id)
    else
      # TODO: needs some display of the error
      render :action => 'new'
    end
  end

  def show
    clubmember = Clubmember.find_by(club_id: params[:club_id], member_id: params[:member_id])

    if clubmember != nil
      render json: clubmember
    else
      # TODO: needs some display of the error
      render :action => new
    end
  end

  def update
    clubmember = Clubmember.find(params[:id])

    if clubmember.update(clubmember_params)
      redirect_to club_path(clubmember)
    else
      # TODO: Needs some explanation as to why the update failed
      render :action => 'show'
    end
  end

  def destroy
    clubmember = Clubmember.find(params[:id])
    clubmember.destroy
    redirect_to club_path(params[:club_id])
  end

# ---------- PRIVATE ---------- #

  private
  def clubmember_params
    params.require(:clubmember).permit(:club_id, :member_id)
  end

  # TODO: currently only handles unfound IDs
  def show_errors
    # TODO: redirect to the club's home page maybe
    redirect_to clubs_path()
  end
end
