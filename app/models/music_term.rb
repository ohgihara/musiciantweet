class MusicTerm < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  validates :music_term, presence: { message: '「音楽用語」をご入力ください。' }
  validates :music_term_view, presence: { message: '「用語の説明」をご入力ください。' }

  def self.search(search)
    if search != ""
      MusicTerm.where('music_term LIKE(?)', "%#{search}%")
    else
      MusicTerm.all
    end
  end

end
