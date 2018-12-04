class Acp::LessonsController < AcpController
  before_action :find_lesson, only: [:show, :edit, :update, :destroy]
  
  def index
    @topics = Topic.all
  end

  def show
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @lesson = Lesson.new
  end

  def edit
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @lesson = @topic.lesson.create(lesson_params)
    redirect_to acp_topic_path(@topic)
  end

  def update
    @lesson.update_attributes(lesson_params)
    redirect_to acp_topic_path(@topic)
  end

  def destroy
    @lesson.destroy
    redirect_to acp_topic_path(@topic)
  end
 
  private
    def lesson_params
      params.require(:lesson).permit(:title, :lesson_slug, :description, :author, :featured, :approval)
    end

    def find_lesson
      @topic = Topic.find(params[:topic_id])
      @lesson = Lesson.find(params[:id])
    end
end