class BooksController < ApplicationController
  def new
  end
  
  def index
    @book=Book.new
    @booka=Book.all
  end
  
  def create
    @book=Book.new(book_params)
    if @book.save
     flash[:notice]='Book was successfully created.'
     redirect_to book_path(@book.id)
    else
     @booka=Book.all
     render :index
    end
  end
  
   def destroy
    book=Book.find(params[:id])
    book.destroy
    redirect_to '/books'
    flash[:notice]='Book was successfully destroyed'
  end
   
  def show
    @bookb=Book.find(params[:id])
  end

  def edit
    @bookb=Book.find(params[:id])
  end
  
  def update
    book=Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
