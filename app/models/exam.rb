class Exam < ApplicationRecord
	has_many :quizzes, dependent: :destroy
end