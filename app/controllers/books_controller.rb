class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @review = Review.new
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    binding.pry
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
