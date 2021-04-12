class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
  end

  def index
    @books = Book.all
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
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    book.update(book_params)
    redirect_to books_path(book.id)
  end

  private
  def book_params
    params.permit(:title, :body)
  end
end
