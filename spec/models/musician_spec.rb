require 'rails_helper'
RSpec.describe Musician, type: :model do
  before do
    @musician = FactoryBot.build(:musician)
  end

describe '音楽家紹介機能' do
  context '紹介ができる時' do
    it 'musician_name,musician_view,musician_song,date_of_birth,musician_era_id,imageが存在すれば登録できる' do
      expect(@musician).to be_valid
    end
  end

  context '紹介ができない時' do
    it 'musician_nameが空では登録できない' do
      @musician.musician_name = ''
      @musician.valid?
      expect(@musician.errors.full_messages).to include("Musician name can't be blank")
    end
    it 'musician_viewが空では登録できない' do
      @musician.musician_view = ''
      @musician.valid?
      expect(@musician.errors.full_messages).to include("Musician view can't be blank")
    end
    it 'musician_songが空では登録できない' do
      @musician.musician_song = ''
      @musician.valid?
      expect(@musician.errors.full_messages).to include("Musician song can't be blank")
    end
    it 'date_of_birthが空では登録できない' do
      @musician.date_of_birth = ''
      @musician.valid?
      expect(@musician.errors.full_messages).to include("Date of birth can't be blank")
    end
    it 'musician_era_idが空では登録できない' do
      @musician.musician_era_id = 1
      @musician.valid?
      expect(@musician.errors.full_messages).to include("Musician era must be other than 1")
    end
    
  end
 end
end
