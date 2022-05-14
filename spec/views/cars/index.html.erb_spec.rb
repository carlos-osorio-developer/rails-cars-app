require 'rails_helper'

RSpec.describe "cars/index", type: :view do
  before(:each) do
    assign(:cars, [
      Car.create!(
        name: "Name",
        description: "MyText",
        image_url: "Image Url",
        model: 2,
        hourly_rate: 3.5,
        user: nil
      ),
      Car.create!(
        name: "Name",
        description: "MyText",
        image_url: "Image Url",
        model: 2,
        hourly_rate: 3.5,
        user: nil
      )
    ])
  end

  it "renders a list of cars" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Image Url".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.5.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
