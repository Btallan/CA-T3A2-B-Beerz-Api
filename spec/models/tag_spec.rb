require 'rails_helper'

RSpec.describe Tag, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  subjectt {
    described_class.new(
      dry: "true"
      bitter: "true"
      dark: "true"
      ales: "true"
      stout: "true"
      larger: "true"
      cider: "true  "
      ipa: "true"
      light: "true"
    )
   }
  
   it "validates properly with boolean fields" do
    expect(subjectt).to be_valid
   end
  
   it "is not valid without text - empty comments" do
    subjectt.dry = ""
    subjectt.bitter = ""
    subjectt.dark = ""
    subjectt.ales = ""
    subjectt.stout = ""
    subjectt.larger = ""
    subjectt.cider = ""
    subjectt.ipa = ""
    subjectt.light = ""
    expect(subjectt).not_to be_valid 
   end
end
