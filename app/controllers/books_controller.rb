class BooksController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :show_errors

  def index
    render json: Member.find(params[:member_id]).books
  end

  def create
    book = book.new(book_params)

    if book.save
      # TODO: could redirect to the group/member's list of books
      redirect_to Member.find(params[:member_id]).books
    else
      # TODO: Should probably include why this failed
      render :action => 'new'
    end
  end

  def show
    # TODO: Gonna have to search by title and author
    render json: book.find(params[:id])
  end

  def update
    book = book.find(params[:id])

    if book.update(book_params)
      redirect_to book_path(book)
    else
      # TODO: Needs some explanation as to why the update failed
      render :action => 'show'
    end
  end

  def destroy
    book = book.find(params[:id])
    book.destroy
    # TODO: Needs to redirect to a group or member's list of books
    redirect_to books_path
  end

# ---------- PRIVATE ----------- #
  private
  def book_params
    params.require(:book).permit(:title, :author, :member_id)
  end

  # TODO: currently only handles unfound IDs
  def show_errors
    # TODO: redirect to the member's book list?
    redirect_to books_path
  end
end
