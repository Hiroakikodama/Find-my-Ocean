class PostCommentsController < ApplicationController
	def create
		diary = Diary.find(params[:diary_id])
		comment = current_user.post_comments.new(post_comment_params)
		comment.diary_id = diary.id
        comment.save
        redirect_to diary_path(diary_id)
	end

	def destroy
		PostComment.find_by(id: params[:id], diary_id: params[:diary_id]).destroy
		redirect_to diary_path(params[:diary_id])
	end

	private
	def post_comment_params
		params.require(:post_comment).permit(:comment)
	end
end
