FactoryBot.define do
  factory :attendee do
    event { nil }
    user { nil }
    quantity { 1 }
  end
end
