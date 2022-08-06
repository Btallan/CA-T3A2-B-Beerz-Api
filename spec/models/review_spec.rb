require 'rails_helper'

RSpec.describe Review, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  subjectr {
    described_class.new(
      headline: "test headline."
      comment: "test comment."
      rating: "4"
    )
   }
  
   it "validates properly with review attributions" do
    expect(subject).to be_valid
   end
  
   it "is not valid without text filled" do
    subject.headline = ""
    subject.comment = ""
    subject.rating = ""
    expect(subject).not_to be_valid 
   end
end
