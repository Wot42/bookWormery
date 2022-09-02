require "json"
require "open-uri"

class BooksController < ApplicationController

  def index
    if params[:query].present? # If they have searched
      sql_query = "title ILIKE :query"
      @books = Book.where(sql_query, query: "%#{params[:query]}%")
    else
      @books = Book.all
    end
  end

  def show
    @user = current_user
    @book = Book.find(params[:id])
    @booking = Booking.new
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user

    if @book.save
      redirect_to shop_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to book_path(@book)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @user = current_user
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to shop_path(@book.user), status: :see_other
  end

  private

  def book_params
    params.require(:book).permit(:title, :condition, :price, :genre, :book_pic, :ISBN)
  end
end
