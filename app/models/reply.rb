class Reply < ApplicationRecord
  belongs_to :comment, counter_cache: true
end