require 'rails_helper'

RSpec.describe Message, type: :model do
  context "model validation test" do
    it "ensures id is present" do
      test_msg = Message.new(title: "test", description: "test msg", created_at: "2019-01-11 18:27:23", updated_at: "2019-01-11 18:27:23", user_id: 2)  
      expect(test_msg.valid?).to eq(false)  
    end

    it "ensures title is present" do
      test_msg = Message.new(id: 2, description: "test msg", created_at: "2019-01-11 18:27:23", updated_at: "2019-01-11 18:27:23", user_id: 2)  
      expect(test_msg.valid?).to eq(false)
    end
    
    it "ensures description is present" do
      test_msg = Message.new(id: 2, title: "test", created_at: "2019-01-11 18:27:23", updated_at: "2019-01-11 18:27:23", user_id: 2)  
      expect(test_msg.valid?).to eq(false)
    end

    it "ensures user_id is present" do
      test_msg = Message.new(id: 2, title: "test", description: "test msg", created_at: "2019-01-11 18:27:23", updated_at: "2019-01-11 18:27:23")  
      expect(test_msg.valid?).to eq(false)
    end

    it "ensures timestamp is present" do
      test_msg = Message.new(id: 2, title: "test", description: "test msg", user_id: 2)  
      expect(test_msg.valid?).to eq(false)
    end

  end
end
