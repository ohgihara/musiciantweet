FactoryBot.define do
  factory :music_term do
    music_term               {Faker::Lorem.sentence}
    music_term_view          {Faker::Lorem.sentence}
    association :user 
  end
end
