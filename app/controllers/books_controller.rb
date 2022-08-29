class BooksController < ApplicationController

def index
@books = Book.all
end

def show
@book = Book.new
end

def new
@book = Book.new
end

def destroy
@book.destroy
end

private

def list_params
  params.require(:book).permit(:title, :condition, :price)
end

end
