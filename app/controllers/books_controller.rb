class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @user = User.find(params[:user_id])
    @book = Book.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @book = Book.new
  end

  def create
    @user = User.find(params[:user_id])
    @book = Book.new(book_params)
    @book.user = @user
    if @book.save
      redirect_to user_path(@user)
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
    @user = User.find(params[:user_id])
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to user_path(@book.user), status: :see_other
  end

  private

  def book_params
    params.require(:book).permit(:title, :condition, :price, :book_pic, :id)
  end
end
