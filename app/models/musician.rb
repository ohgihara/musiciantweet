class Musician < ApplicationRecord
  has_one_attached :image
  validates :musician_name, presence: true
  validates :musician_view, presence: true
  validates :musician_song, presence: true
  validates :date_of_birth, presence: true

  belongs_to :user
  has_many :comments
end

# , format: {with: message: "音楽家の生まれた年を入力してください。"}
