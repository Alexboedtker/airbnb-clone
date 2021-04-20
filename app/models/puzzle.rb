class Puzzle < ApplicationRecord
  validates :title, presence: true
  validates :size, presence: true, numericality: { only_integer: true }

  has_one_attached :photo
  validates :user, presence: true
  validates :price, presence: true, numericality: { only_integer: true }

  belongs_to :user
end
