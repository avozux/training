class CoursesController < ApplicationController
	def index
	end

	def course
		@course = Course.find_by(course_slug: params[:course_slug])
	end

	def topic
		@course = Course.find_by(course_slug: params[:course_slug])
		@topic = Topic.find_by(topic_slug: params[:topic_slug])
	end

	def lesson
		@course = Course.find_by(course_slug: params[:course_slug])
		@topic = Topic.find_by(topic_slug: params[:topic_slug])
		@lesson = Lesson.find_by(lesson_slug: params[:lesson_slug])
	end

	def chapter
		@course = Course.find_by(course_slug: params[:course_slug])
		@topic = Topic.find_by(topic_slug: params[:topic_slug])
		@lesson = Lesson.find_by(lesson_slug: params[:lesson_slug])
		@chapter = Chapter.find_by(slug: params[:slug])

		if user_signed_in?
			@log = Log.find_by(:chapter_id => @chapter, :user_id => current_user.id)
			@follow = Follow.find_by(:chapter_id => @chapter, :user_id => current_user.id)
		end
	end
end