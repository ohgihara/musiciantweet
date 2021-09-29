class Musician < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :musician_era

  has_one_attached :image
  validates :image, presence:true

with_options presence: true do
  validates :musician_name
  validates :musician_view
  validates :musician_song
  validates :date_of_birth
end

  validates :musician_era_id, numericality: { other_than: 1, message: "「音楽家の時代区分」をご選択ください。"}


  belongs_to :user
  has_many :comments
end

