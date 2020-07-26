class PictureBooksController < ApplicationController
  def new
    @picture_book = PictureBook.new
  end

  def create
    @picture_book = PictureBook.new(picture_book_params)
    @picture_book.user_id = current_user.id
    if @picture_book.save
      redirect_to picture_books_path
    else
      render :new
    end
  end

  def index
    @picture_books = PictureBook.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def desetroy
  end

  private
  def picture_book_params
  	params.require(:picture_book).permit(:fish_name, :point, :discription, :image)
  end
end
