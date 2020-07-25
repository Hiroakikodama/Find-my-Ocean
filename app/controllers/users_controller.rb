class UsersController < ApplicationController
  def show
  	@diaries = Diary.all
  	@picture_books = PictureBook.all
  	@check_lists = CheckList.all
  end

  def index
  end

  def edit
  end

  private
  def user_params
  	params.require(:user).premit(:name, :introdustion, :image)
  end
end
