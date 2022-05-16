require 'rails_helper'

RSpec.describe 'cars/show', type: :view do
  let(:user) { FactoryBot.create(:user) }
  before(:each) do
    @car = assign(:car, Car.create!(
                          name: 'Name',
                          description: 'MyText',
                          image_url: 'Image Url',
                          model: 2,
                          hourly_rate: 3.5,
                          user: user
                        ))
  end  
end
