require 'faker'
FactoryBot.define do
    factory :aula do
      name { Faker::Name.name }
      duration { Faker::Name.number }
      theme { Faker::Name.name }
      date { Faker::Name.date }
      numer { Faker::Name.name }
      associated_video { Faker::Name.number }
      associatedcurso { Faker::Name.name }
    end

end