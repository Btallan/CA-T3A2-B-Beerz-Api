require 'rails_helper'

RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  subjectu {
    described_class.new(
      first_name: "test name",
      last_name: "test name last",
      email: "testemail@email.com",
      username: "testing",
      password: "password"
      password_confirmation: "password"
      date_of_birth: ""
      mobile: "1234567890"
      employer: true
      admin: true
    )
   }
  
   it "validates subjectu with Name/Title/descript and price fields" do
    expect(subjectu).to be_valid
   end
  
   it "is not valid without above attributes" do
    subjectu.first_name = ""
    subjectu.last_name = ""
    subjectu.email = ""
    subjectu.username = ""
    subjectu.email = ""
    subjectu.password = ""
    subjectu.password_confirmation = ""
    subjectu.date_of_birth = "1"
    subjectu.mobile = ""
    expect(subjectu).not_to be_valid 
   end




end
