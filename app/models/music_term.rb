class MusicTerm < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  validates :music_term, presence: true
  validates :music_term_view, presence: true
end
