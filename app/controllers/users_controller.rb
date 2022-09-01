class UsersController < ApplicationController
  def show
  end

  def shop
    @user = User.find(params[:id])
    @books = @user.books
  end

  def basket
    @user = current_user
    @books = @user.bookings.books
  end
end
