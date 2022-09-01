class UsersController < ApplicationController
  def show
  end

  def shop
    @user = User.find(params[:id])
    @books = @user.books
  end

  def basket
    @user = User.find(params[:id])
    @books = []
    @user.bookings.each do |booking|
      @books << booking.book
    end
  end
end
