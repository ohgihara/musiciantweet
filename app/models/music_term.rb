class MusicTerm < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  validates :music_term, presence: true
  validates :music_term_view, presence: true

  def self.search(search)
    if search != ""
      MusicTerm.where('music_term LIKE(?)', "%#{search}%")
    else
      MusicTerm.all
    end
  end

end
