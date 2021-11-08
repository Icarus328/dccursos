require 'faker'
FactoryBot.define do
    factory :curso do
      name { Faker::Name.name }
      description { Faker::Name.name }
      duration { Faker::Name.name }
      teacher { Faker::Name.name }
      price { Faker::Number.between(from: 0, to: 100000000) }
      category { Faker::Name.name }
    end

end