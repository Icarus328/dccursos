require 'faker'

FactoryBot.define do
    factory :user do
      username { Faker::Name.name }
      email { Faker::Internet.email }
      password { Faker::Internet.password(min_length: 6) }
      age { Faker::Number.between(from: 0, to: 99) }
    end
end


