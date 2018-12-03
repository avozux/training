class Comment < ApplicationRecord
  belongs_to :chapter, counter_cache: true
  has_many :replies, dependent: :destroy
end