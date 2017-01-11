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
    if @book.save
      redirect_to book_path(@book)
    else
      render :new
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end

end
