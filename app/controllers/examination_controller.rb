class ExaminationController < ApplicationController
  before_action :authenticate_user!
	def index
		@exams = Exam.all
	end

	def detail
		@exam = Exam.find_by(slug: params[:slug])

    if user_signed_in?
      @log = Log.find_by(:exam_id => @exam.id, :user_id => current_user.id)
      @examination = Examination.find_by(:exam_id => @exam.id, :user_id => current_user.id)
    end
	end

	def quizzes
    @examination = Examination.new(quiz_params)

    # This validate only one exam per user can be send to server
    if @examination.valid?
      if @examination.save
        redirect_back(fallback_location: root_path)
      end
    end
  end

  private
    def quiz_params
      params.permit(:exam_type, :exam_id, :exam_url, :score, :time, :received, :user_id)
    end
end