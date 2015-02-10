require 'rails_helper'

RSpec.describe User, :type => :model do
  
  it "has a valid factory" do 
    expect(FactoryGirl.build(:user)).to be_valid
  end

  it "is invalid without a name" do 
    expect(FactoryGirl.build(:user, name: nil)).to be_invalid
  end

  it "is invalid without a first and last name" do  
  end

  it "is invalid without an email address" do 
    expect(FactoryGirl.build(:user, email: nil)).to be_invalid
  end

  it "is invalid if email address is not properly formatted" do 
    expect(FactoryGirl.build(:user, email: "jean-gray.com")).to be_invalid
  end

  it "requires that email address be unique" do 
    user1 = FactoryGirl.create(:user, email: "jean.gray@email.com")
    user2 = FactoryGirl.build(:user, email: "JEAN.GRAY@EMAIL.COM")

    expect(user1).to be_valid
    expect(user2).to be_invalid
  end

  it "requires a zip code" do 
    expect(FactoryGirl.build(:user, zip: nil)).to be_invalid
  end

  it "requies that zip code be properly formatted" do 
    expect(FactoryGirl.build(:user, zip: 123456)).to be_invalid
    expect(FactoryGirl.build(:user, zip: 123-456)).to be_invalid
  end

  it "requires that users specify whether they are willing to travel" do 
    expect(FactoryGirl.build(:user, travel: nil)).to be_invalid
  end

  it "requires that users specify their decision driver" do  
    expect(FactoryGirl.build(:user, decision_driver: nil)).to be_invalid
  end


end
