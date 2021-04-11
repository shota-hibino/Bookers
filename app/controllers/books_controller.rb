class BooksController < ApplicationController
  def show
      @book = Book.find(params[:id])
  end

  def index
  end

  def new
    @book = book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(book.id)
  end

  def edit
  end

  private
  def book_params
    params.permit(:title, :body)
  end
end
