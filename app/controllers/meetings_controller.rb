class MeetingsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :show_errors

  # TODO: Maybe redirect to the group/user's list of meetings
  def index
    render json: meeting.all
  end

  def create
    meeting = meeting.new(meeting_params)

    if meeting.save
      # TODO: could redirect to the group/member's list of meetings
      redirect_to meeting_path(meeting.id)
    else
      # TODO: More information
      render :action => 'new'
    end
  end

  def show
    render json: meeting.find(params[:id])
  end

  def update
    meeting = meeting.find(params[:id])

    if meeting.update(meeting_params)
      redirect_to meeting_path(meeting)
    else
      # TODO: Needs some explanation as to why the update failed
      render :action => 'show'
    end
  end

  def destroy
    meeting = meeting.find(params[:id])
    meeting.destroy
    # TODO: Needs to redirect to a group or member's list of meetings
    redirect_to meetings_path
  end

# ---------- PRIVATE ----------- #
  private
  def meetings_params
    params.require(:meeting).permit(:name)
  end

  # TODO: currently only handles unfound IDs
  def show_errors
    # TODO: redirect to the member's meeting list?
    redirect_to meetings_path
  end
end
