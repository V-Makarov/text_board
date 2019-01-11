require 'rails_helper'

RSpec.describe Comment, type: :model do
  context "model validation test" do
  
    it "ensures id is present" do
      test_comment = Comment.new(content: "test", message_id: 3, user_id: 4, created_at: "2019-01-11 18:40:53", updated_at: "2019-01-11 18:40:53") 
      expect(test_comment.valid?).to eq(false)  
    end 

    it "ensures content is present" do
      test_comment = Comment.new(id: 4, message_id: 3, user_id: 4, created_at: "2019-01-11 18:40:53", updated_at: "2019-01-11 18:40:53") 
      expect(test_comment.valid?).to eq(false)  
    end 
    
    it "ensures message_id is present" do
      test_comment = Comment.new(id: 4, content: "test", user_id: 4, created_at: "2019-01-11 18:40:53", updated_at: "2019-01-11 18:40:53") 
      expect(test_comment.valid?).to eq(false)  
    end 

    it "ensures user_id is present" do
      test_comment = Comment.new(id: 4, content: "test", message_id: 3, created_at: "2019-01-11 18:40:53", updated_at: "2019-01-11 18:40:53") 
      expect(test_comment.valid?).to eq(false)  
    end 

    it "ensures timestamp is present" do
      test_comment = Comment.new(id: 4, content: "test", message_id: 3, user_id: 4) 
      expect(test_comment.valid?).to eq(false)  
    end 
    
  end
end
