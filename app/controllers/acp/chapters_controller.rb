class Acp::ChaptersController < AcpController
  before_action :find_chapter, only: [:show, :edit, :update, :destroy]
 
  def show
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @lesson = Lesson.find(params[:lesson_id])
    @chapter = Chapter.new
  end

  def edit
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @lesson = Lesson.find(params[:lesson_id])
    @chapter = @lesson.chapter.create(chapter_params)
    redirect_to acp_topic_path(@topic)
  end

  def update
    @chapter.update_attributes(chapter_params)
    redirect_to acp_topic_path(@topic)
  end

  def destroy
    @chapter.destroy
    redirect_to acp_topic_path(@topic)
  end
 
  private
    def chapter_params
      params.require(:chapter).permit(:title, :slug, :description, :body, :featured, :approval, :thumbnail, :video)
    end

    def find_chapter
      @topic = Topic.find(params[:topic_id])
      @lesson = Lesson.find(params[:lesson_id])
      @chapter = Chapter.find(params[:id])
    end
end