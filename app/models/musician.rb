class Musician < ApplicationRecord
  has_one_attached :image
  validates :musician_name, presence: true
end
