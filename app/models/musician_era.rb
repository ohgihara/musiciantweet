class MusicianEra < ActiveHash::Base
  self.data = [
    { id: 1, name: '※音楽家の時代区分を選択してください' },
    { id: 2, name: 'バロック' },
    { id: 3, name: '古典派' },
    { id: 4, name: 'ロマン派' },
    { id: 5, name: '近現代' }
  ]
end
