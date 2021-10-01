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
      expect(@musician.errors.full_messages).to include("Musician name 「音楽家名」をご入力ください。")
    end
    it 'musician_viewが空では登録できない' do
      @musician.musician_view = ''
      @musician.valid?
      expect(@musician.errors.full_messages).to include("Musician view 「音楽家の概要」をご入力ください。")
    end
    it 'musician_songが空では登録できない' do
      @musician.musician_song = ''
      @musician.valid?
      expect(@musician.errors.full_messages).to include("Musician song 「代表曲」をご入力ください。")
    end
    it 'date_of_birthが空では登録できない' do
      @musician.date_of_birth = ''
      @musician.valid?
      expect(@musician.errors.full_messages).to include("Date of birth 「生没年」を〇〇年(3,4桁)~〇〇年(3,4桁)でご入力ください。")
    end
    it 'musician_era_idが空では登録できない' do
      @musician.musician_era_id = 1
      @musician.valid?
      expect(@musician.errors.full_messages).to include("Musician era 「音楽家の時代区分」をご選択ください。")
    end
    
  end
 end
end
