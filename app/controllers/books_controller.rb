class BooksController < ApplicationController
  def new
  end

  def index
    @books = Book.all
    def new
      @book = Book.new
    end
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/top'
  end

  def show
  end

  def edit
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
  end

  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
