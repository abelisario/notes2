require 'rails_helper'

RSpec.describe Note, type: :model do
  it "is valid with valid attributes" do
  	note = FactoryGirl.build(:note)
    expect(note).to be_valid
  end
 
  it "is not valid without a title" do
  	note = FactoryGirl.build(:no_title)
    expect(note).to_not be_valid
  end
  
  it "is not valid without a content"  do
    note = FactoryGirl.build(:no_content)
    expect(note).to_not be_valid
  end

end
