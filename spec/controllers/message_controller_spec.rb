require 'rails_helper'

RSpec.describe MessagesController, type: :controller do
  describe "renders the index template" do
    it "description" do
        get :index
        expect(response).to render_template("index")
    end
  end
end
