FactoryBot.define do
  factory :review do
    user { nil }
    product { nil }
    headline { "MyString" }
    comment { "MyText" }
    rating { 1 }
  end
end
