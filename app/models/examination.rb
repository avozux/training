class Examination < ApplicationRecord
  belongs_to :user, counter_cache: true
  validates :exam_id, uniqueness: { scope: :user_id }
end