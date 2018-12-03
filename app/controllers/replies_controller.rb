class RepliesController < ApplicationController
	def create
    @comment = Comment.find(params[:comment_id])
    @reply = @comment.replies.create(reply_params)
    redirect_back(fallback_location: root_path)
  end
 
  private
    def reply_params
      params.require(:reply).permit(:admin, :email, :content)
    end
end