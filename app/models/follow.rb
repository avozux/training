class Follow < ApplicationRecord
  belongs_to :user, counter_cache: true
  validates :chapter_id, uniqueness: { scope: :user_id }
end