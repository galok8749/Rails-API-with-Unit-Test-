class BooksController < ApplicationController

  def index
    render json: Book.all
  end

  def create
    # book = Book.create(title: "Harry potter 1", auther: "KJ Rowling");
    book = Book.new(book_params);

    if book.save
      render json: book, status: :created
    else
      render json: book.errors, status: :unprocessable_entity
    end
  end

  def destroy
    Book.find(params[:id]).destroy!

    head :no_content
  end

  private

  def book_params
    params.require(:book).permit(:title, :auther)
  end
end
