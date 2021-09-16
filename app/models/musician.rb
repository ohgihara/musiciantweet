class Musician < ApplicationRecord
  has_one_attached :image
  validates :musician_name, presence: true
  validates :image, presence: true

  belongs_to :user
  has_many :comments
end
