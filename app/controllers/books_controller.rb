class BooksController < ApplicationController
  def index
    @books=Book.all
    @book=Book.new
  end
  
  def create
    @book=Book.new(book_params)
    if @book.save
      flash[:notice]="Book was successflly created."
      redirect_to book_path(@book.id)
    else
      @books=Book.all.order(id:asc)
      render :index
    end
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
  
  def update
    book=Book.find(params[:id])
    book.update(book_params)
    flash[:notice]="Book was successfully updated."
    redirect_to book_path(book.id)
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
