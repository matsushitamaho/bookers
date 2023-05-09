class BooksController < ApplicationController
  def index
    @boo=Book.all
  end

  def show
  end

  def edit
  end
  
  def destroy
    book=Book.find(params[:id])
    book.destroy
    redirect_to'/books'
  end
end
