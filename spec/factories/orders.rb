FactoryBot.define do
  factory :order do
    product { nil }
    user { nil }
    quantity { 1 }
    status { "MyString" }
  end
end
