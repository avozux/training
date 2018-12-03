class Log < ApplicationRecord
  belongs_to :user, counter_cache: true
  validates_uniqueness_of :user_id, scope: %i[chapter_id exam_id]
end