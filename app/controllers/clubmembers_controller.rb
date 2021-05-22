class ClubmembersController < ApplicationController

  def create
    club = Club.find(params[:club_id])
    member = Member.find(params[:member_id])

    clubmember = Clubmember.new(club_id: club.id, member_id: member.id)

    if clubmember.save()
      redirect_to club_path(club.id)
    else
      render :action => 'new'
    end
  end

  def destroy
    clubmember = Clubmember.find(params[:id])
    clubmember.destroy
    redirect_to club_path(params[:club_id])
  end

# ---------- PRIVATE ---------- #

  private
end
