FactoryBot.define do
  factory :musician do
    musician_name                 {Faker::Lorem.sentence}
    musician_view                 {Faker::Lorem.sentence}
    musician_song                 {Faker::Lorem.sentence}
    date_of_birth                 {Faker::Lorem.sentence}
    musician_era_id               { 3 } 
    association :user 

    after(:build) do |musician|
      musician.image.attach(io: File.open('public/images/images.png'), filename: 'images.png')
    end
  end
end
