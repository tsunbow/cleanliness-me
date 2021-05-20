FactoryBot.define do
  factory :clean do
    clean_name         { Faker::Name.initials }
    text               { Faker::Lorem.sentence }
    cleaning_place     { Faker::Lorem.sentence }
    status_id          { 2 }
    support_id         { 2 }
    important_id       { 2 }
    association :user

    after(:build) do |clean|
      clean.image.attach(io: File.open('public/images/test_image.jpg'), filename: 'test_image.jpg')
    end
  end
end
