class DiariesController < ApplicationController
  def new
  	@diary = Diary.new
    @diary.diary_images.build
  end

  def create
  	@diary = Diary.new(diary_params)
    @diary.user_id = current_user.id
    @diary.image_id = 'test'
    if @diary.save
    # binding.pry
       images = diary_params[:diary_images_images] #0番目にゴミが必ずあると仮定して、0番目のゴミを削除してからeachを回す。
       images.delete_at(0) 
       images.each do |di| #複数枚画像を登録するため、画像の枚数分、eachで画像を回す。
        di = @diary.diary_images.build(image_id: di)
        di.save
       end
        redirect_to diary_path(@diary.id)
    else
      @diaries = Diary.all
      @user = current_user
      render :index
    end
  end

  def index
    @diaries = Diary.all
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
  end

  private
  def diary_params
  	params.require(:diary).permit(:user_id, :diary_title, :diary_body, diary_images_images: [])
  end
end
