class DiariesController < ApplicationController
  def new
  	@diary = Diary.new
    @diary.diary_images.build
  end

  def create
  	@diary = Diary.new(params[:id])
    @diary.save
    redirect_to diaries_path
  end

  def index
  end

  def edit
    @diary = Diary.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
  def diary_params
  	params.require(:diary).permit(:user_id, :diary_title, :diary_body, :image)
  end
end
