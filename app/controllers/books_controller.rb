class BooksController < ApplicationController
  def index
    @books=Book.new
  end

  def show
    @books = Book.find(params[:id]) 
  end

  def edit
  end
  
  def destroy
    book=Book.find(params[:id])
    book.destroy
    redirect_to'/books/index'
  end
end
