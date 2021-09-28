require 'rails_helper'
RSpec.describe MusicTerm, type: :model do
  before do
    @music_term = FactoryBot.build(:music_term)
  end

describe '音楽用語紹介機能' do
  context '音楽用語が紹介できる時' do
    it 'music_term,music_term_viewが存在すれば登録できる' do
      expect(@music_term).to be_valid
    end
  end

  context '音楽用語が紹介できない時' do
    it 'music_termが空では登録できない' do
      @music_term.music_term = ''
      @music_term.valid?
      expect(@music_term.errors.full_messages).to include("Music term can't be blank")
    end
    it 'musician_term_viewが空では登録できない' do
      @music_term.music_term_view = ''
      @music_term.valid?
      expect(@music_term.errors.full_messages).to include("Music term view can't be blank")
    end
  end
 end
end