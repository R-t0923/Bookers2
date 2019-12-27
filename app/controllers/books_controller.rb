class BooksController < ApplicationController
  def index
    
  end

  def new
    @book = Book.new(book_params)
  end

  def create
    @book = Book.new(book_params)
    @book.save
    reirect_to book_path(@book.id)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
