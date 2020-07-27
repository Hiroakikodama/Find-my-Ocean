class UsersController < ApplicationController
  def show
  	@diaries = Diary.all
  	@picture_books = PictureBook.all
  	@check_lists = CheckList.all
    @user = User.find(params[:id])
  end

  def index
    @diary = Diary.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to request.rederrer
  end

  private
  def user_params
  	params.require(:user).premit(:name, :introdustion, :image)
  end
end
