class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Books.find_by(params[:id])
  end
end
