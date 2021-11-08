FactoryBot.define do
  factory :answer do
    content { "MyText" }
    associated_question { "MyString" }
  end
end
