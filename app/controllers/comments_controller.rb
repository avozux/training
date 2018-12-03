class CommentsController < ApplicationController
	def create
    @chapter = Chapter.find(params[:chapter_id])
    @comment = @chapter.comments.create(comment_params)
    redirect_back(fallback_location: root_path)
  end

  private
    def comment_params
      params.require(:comment).permit(:name, :email, :content)
    end
end