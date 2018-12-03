class Lesson < ApplicationRecord
  belongs_to :topic
  has_many :chapter, dependent: :destroy
end