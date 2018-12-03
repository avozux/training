class FollowsController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:create]

  def create
    @follow = Follow.new(follow_params)

    if @follow.valid?
    	if @follow.save
        cookies[:_followed] = true
        flash[:success] = "This course has been followed successfully"
        redirect_back(fallback_location: root_path)
      end
    end
  end

  def destroy
    @follow = Follow.find(params[:id])

    if @follow.destroy
      flash[:success] = "This course has been unfollowed"
      redirect_back(fallback_location: root_path)
    end
  end

  private
    def follow_params
      params.permit(:user_id, :chapter_title, :chapter_url, :chapter_id, :followed)
    end
end