class LogsController < ApplicationController
  def create
    @log = Log.new(log_params)

    # This cookie control send logs from course detail to avoid view spam
    if controller_name == "examination"
      cookies[:_quizzes] = { :value => "passed", :expires => 1.minutes.from_now }
    elsif controller_name == "course"
      cookies[:_viewed] = { :value => true, :expires => 1.minutes.from_now }
    end

    # This validate only one course per user can be send to server
    if @log.valid?
    	@log.save
    end
  end

  private
    def log_params
      params.permit(:log_type, :user_id, :exam_url, :exam_id, :chapter_url, :chapter_id, :lesson_id, :received)
    end
end