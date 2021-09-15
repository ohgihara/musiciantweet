class Musician < ApplicationRecord
  has_one_attached :image
  validates :musician_name, presence: true
  validates :image, presence: true
end
