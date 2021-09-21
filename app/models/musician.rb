class Musician < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :musician_era

  has_one_attached :image
  validates :musician_name, presence: true
  validates :musician_view, presence: true
  validates :musician_song, presence: true
  validates :date_of_birth, presence: true
  validates :musician_era_id, numericality: { other_than: 1}

  belongs_to :user
  has_many :comments
end

# , format: {with: message: "音楽家の生まれた年を入力してください。"}
# , format: { with:  /\A\d{3,4}年\z/ }