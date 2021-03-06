class BooksController < ApplicationController
before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @book.completed == true
      redirect_to book_path(@book)
    else
      @book.update(book_params)
      redirect_to book_path(@book)
    end
  end

  def search
  end

  def destroy
    @book.destroy
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :note, :completed)
  end

  def set_book
    @book = Book.find(params[:id])
  end
end
