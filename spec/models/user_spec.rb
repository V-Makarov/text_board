require 'rails_helper'

RSpec.describe User, type: :model do
  context "model validation test" do
    it "ensures default role is user" do
      test_user = User.new() 
      expect(test_user.role).to eq("user")  
    end 

    it "ensures id is present" do
      test_user = User.new()
      expect(test_user.valid?).to eq(false)
    end

    it "ensures email is present" do
      test_user = User.new(id: 1, created_at: "2019-01-11 07:06:08", updated_at: "2019-01-11 07:06:08")
      expect(test_user.valid?).to eq(false)
    end

    it "ensures timestamp is present" do
      test_user = User.new(id: 2, email: "igor1995@mail.ru")
      expect(test_user.valid?).to eq(false)
    end
    
  end
end
