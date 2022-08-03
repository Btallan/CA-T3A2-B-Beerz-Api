require 'rails_helper'

RSpec.describe Comment, type: :model do
 # pending "add some examples to (or delete) #{__FILE__}"
 subject {
  described_class.new(
    text: "testing comment message."
  )
 }

 it "validates properly with text attribution" do
  expect(subject).to be_valid
 end
end
