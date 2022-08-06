require 'rails_helper'

RSpec.describe Product, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  subjectp {
    described_class.new(
      name: "test name",
      title: "test title",
      description: "test descript",
      price: 15
    )
   }
  
   it "validates subjectp with Name/Title/descript and price fields" do
    expect(subjectp).to be_valid
   end
  
   it "is not valid without above attributes" do
    subjectp.name = ""
    subjectp.title = ""
    subjectp.description = ""
    subjectp.price = ""
    expect(subjectp).not_to be_valid 
   end
end
