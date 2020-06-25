class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def search
  end

  def create
    Book.find_or_create_by(book_params)
  end

  private
  def book_params
    params.require(:book).permit(:google_id, :title)
  end
end
