class Acp::TopicsController < AcpController
  before_action :find_topic, only: [:show, :edit, :update, :destroy]
  
	def index
    @topics = Topic.all
  end
 
  def show
  end
 
  def new
    @topic = Topic.new
  end
 
  def edit
  end
 
  def create
    @topic = Topic.new(topic_params)
 
    if @topic.save
      redirect_to acp_topics_path
    else
      render 'new'
    end
  end
 
  def update
    if @topic.update(topic_params)
      redirect_to acp_topics_path
    else
      render 'edit'
    end
  end
 
  def destroy
    @topic.destroy
    redirect_to acp_topics_path
  end
 
  private
    def topic_params
      params.require(:topic).permit(:title, :topic_slug, :description, :featured, :approval)
    end

    def find_topic
      @topic = Topic.find(params[:id])
    end
end