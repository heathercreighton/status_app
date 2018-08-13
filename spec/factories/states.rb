FactoryBot.define do
  factory :state do
    status_message { Faker::Lorem.word }
    status { Faker::Name.status }
  end
end