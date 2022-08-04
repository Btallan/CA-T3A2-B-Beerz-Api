FactoryBot.define do
  factory :user do
    first_name { "MyString" }
    last_name { "MyString" }
    email { "MyString" }
    username { "MyString" }
    password_digest { "MyString" }
    date_of_birth { "2022-08-04" }
    mobile { "MyString" }
    employer { false }
    admin { false }
  end
end
