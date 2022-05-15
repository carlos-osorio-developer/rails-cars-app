require 'rails_helper'

RSpec.describe CarsController, type: :controller do  

    let(:user) { FactoryBot.create(:user) }

    let(:valid_attributes) {
        { :name => "Test title!", :description => "This is a test description", :image_url => "draft", :model => "draft", :hourly_rate => "1,3", :user => user }
    }

    let(:valid_session) { {} }

    describe "GET #index" do
      
        it "returns a success response" do
          login_user(user)
          Car.create! valid_attributes
          get :index, params: {}, session: valid_session
          expect(response).to be_successful 
          expect(response).to have_http_status(200)
        end
    end
end