class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @review = Review.new
    if current_user.likes.pluck(:likeable_id).include?(@book.id)
      @like = Like.find_by(likeable_id: @book.id)
    else
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
