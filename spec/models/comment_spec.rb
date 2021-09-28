require 'rails_helper'
RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

describe 'コメント投稿機能' do
  context 'コメントができる時' do
    it 'textが存在すれば登録できる' do
      expect(@comment).to be_valid
    end
  end

  context 'コメントができない時' do
    it 'musician_nameが空では登録できない' do
      @comment.text = ''
      @comment.valid?
      expect(@comment.errors.full_messages).to include("Text can't be blank")
    end
  end
 end
end