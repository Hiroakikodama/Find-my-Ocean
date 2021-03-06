class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @diaries = Diary.page(params[:page]).reverse_order
    @picture_books = PictureBook.page(params[:page]).reverse_order
    @check_lists = CheckList.page(params[:page]).reverse_order
  end

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :image)
  end
end
