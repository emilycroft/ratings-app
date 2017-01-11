class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])

    @review = Review.find_by(reviewable_id: @book.id, user_id: current_user.id, reviewable_type: "Book")
    if @review.blank?
      @review = Review.new
    end

    @like = Like.find_by(likeable_id: @book.id, user_id: current_user.id, likeable_type: "Book")
    if @like.blank?
      @like = Like.new
    end
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    unless @book.save
      render :new
    else
      flash[:notice] = "Book has been successfully created"
      redirect_to book_path(@book)
    end
  end
  private
  def book_params
    params.require(:book).permit(:title, :author)
  end

end
