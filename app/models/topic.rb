class Topic < ApplicationRecord
	has_many :lesson, dependent: :destroy
end