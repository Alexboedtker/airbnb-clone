class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :puzzle

  default_scope { order(created_at: :desc) }
end
