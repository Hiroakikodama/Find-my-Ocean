class PictureBooksController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  private
  def picture_book_params
  	params.require(:picture_book).permit(:fish_name, :point, :discription, :image)
  end
end
