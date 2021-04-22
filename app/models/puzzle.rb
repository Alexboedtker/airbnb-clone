class Puzzle < ApplicationRecord
  validates :title, presence: true
  validates :size, presence: true, numericality: { only_integer: true }

  has_one_attached :photo

  validates :user, presence: true
  validates :price, presence: true, numericality: { only_integer: true }

  belongs_to :user

  has_many :bookings

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  default_scope { order(created_at: :desc) }

  include PgSearch::Model
  pg_search_scope :search_by_title_description_and_size,
    against: [ :title, :description, :size ],
    using: {
      tsearch: { prefix: true }
    }
end
