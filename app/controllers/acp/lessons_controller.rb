class Acp::LessonsController < AcpController
	def index
    @lessons = Lesson.all
  end
 
  def show
    @topic = Topic.find(params[:topic_id])
    @lesson = Lesson.find(params[:id])
  end
 
  def new
    @lesson = Lesson.new
  end
 
  def edit
    @lesson = Lesson.find(params[:id])
  end
 
  def create
    @lesson = Lesson.new(lesson_params)
 
    if @lesson.save
      redirect_to acp_lessons_path
    else
      render 'new'
    end
  end
 
  def update
    @lesson = Lesson.find(params[:id])
 
    if @lesson.update(lesson_params)
      redirect_to acp_lessons_path
    else
      render 'edit'
    end
  end
 
  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
 
    redirect_to acp_lessons_path
  end
 
  private
    def lesson_params
      params.require(:lesson).permit(:title, :lesson_slug, :description, :author, :featured, :approval)
    end
end