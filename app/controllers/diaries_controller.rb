class DiariesController < ApplicationController
  def new
  	@diary = Diary.new
  end

  def create
  	@diary = current_user.diaries.build(diary_params)
    if @diary.save
      redirect_to diary_path(@diary.id)
    else
      @diaries = Diary.all
      @user = current_user
      render :index
    end
  end

  def index
    @diaries = Diary.page(params[:page]).reverse_order
    @diary = Diary.new
  end

  def edit
    @diary = Diary.find(params[:id])
  end

  def update
  end

  def show
    @diary = Diary.find_by(id: params[:id])
    @diary_images = @diary.diary_images
  end

  def destroy
    @diary = Diary.find(params[:id])
    @diary.destroy
    redirect_to diaries_path
  end

  private
  def diary_params
  	params.require(:diary).permit(:user_id, :diary_title, :diary_body, diary_images_images: [])
  end
end
