class Puzzle < ApplicationRecord
  validates :title, presence: true
  validates :size, presence: true, numericality: { only_integer: true }

  has_one_attached :photo

  validates :user, presence: true
  validates :price, presence: true, numericality: { only_integer: true }

  belongs_to :user

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
