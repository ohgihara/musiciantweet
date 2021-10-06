class Musician < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :musician_era

  has_one_attached :image
  

  validates :musician_name, presence: { message: '「音楽家名」をご入力ください。' }
  validates :image, presence: { message: '「画像」を挿入してください。' }
  validates :musician_era_id, numericality: { other_than: 1, message: "「音楽家の時代区分」をご選択ください。"}
  validates :date_of_birth,format: {with: /\A[0-9]{3,4}~[0-9]{3,4}年\z/, message:"「生没年」を〇〇年(3,4桁)~〇〇年(3,4桁)でご入力ください。"}
  validates :musician_view, presence: { message: '「音楽家の概要」をご入力ください。' }
  validates :musician_song, presence: { message: '「代表曲」をご入力ください。' }
  validates :birth_place, presence: { message: '「出身地」をご入力ください。' }

  belongs_to :user
  has_many :comments
end

