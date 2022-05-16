require 'rails_helper'

RSpec.describe 'cars/index', type: :view do
  let(:user) { FactoryBot.create(:user) }
  let(:user1) { FactoryBot.create(:user) }
  before(:each) do
    assign(:cars, [
             Car.create!(
               name: 'Name',
               description: 'MyText',
               image_url: 'Image Url',
               model: 2,
               hourly_rate: 3.5,
               user: user
             ),
             Car.create!(
               name: 'Name',
               description: 'MyText',
               image_url: 'Image Url',
               model: 2,
               hourly_rate: 3.5,
               user: user1
             )
           ])
  end  
end
