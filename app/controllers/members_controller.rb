class MembersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :show_errors

  # TODO: Maybe don't list all the members
  # could posibly only do members in the same group as the person
  def index
    render json: Member.all
  end

  def create
    member = Mamber.new(member_params)

    if member.save
      redirect_to member_path(member.id)
    else
      render :action => 'new'
    end
  end

  def show
    render json: Member.find(params[:id])
  end

  def update
    member = Member.find(params[:id])

    if member.update(member_params)
      redirect_to member_path(member)
    else
      # TODO: Needs some explanation as to why the update failed
      render :action => 'show'
    end
  end

  def destroy
    member = Member.find(params[:id])
    member.destroy
    # TODO: Needs to redirect to a root not an index of all clubs
    redirect_to members_path
  end

# ---------- PRIVATE ----------- #
  private
  def mamber_params
    params.require(:member).permit(:name)
  end

  # TODO: currently only handles unfound IDs
  def show_errors
    # TODO: redirect to the profile page?
    redirect_to members_path
  end
end
