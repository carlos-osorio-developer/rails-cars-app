require 'rails_helper'

RSpec.describe 'cars/show', type: :view do
  before(:each) do
    @car = assign(:car, Car.create!(
                          name: 'Name',
                          description: 'MyText',
                          image_url: 'Image Url',
                          model: 2,
                          hourly_rate: 3.5,
                          user: nil
                        ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Image Url/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(//)
  end
end
