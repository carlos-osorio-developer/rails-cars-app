require 'rails_helper'

RSpec.describe 'cars/new', type: :view do
  let(:user) { FactoryBot.create(:user) }
  before(:each) do
    assign(:car, Car.new(
                   name: 'MyString',
                   description: 'MyText',
                   image_url: 'MyString',
                   model: 1,
                   hourly_rate: 1.5,
                   user: user
                 ))
  end

  it 'renders new car form' do
    render

    assert_select 'form[action=?][method=?]', cars_path, 'post' do
      assert_select 'input[name=?]', 'car[name]'

      assert_select 'textarea[name=?]', 'car[description]'

      assert_select 'input[name=?]', 'car[image_url]'

      assert_select 'input[name=?]', 'car[model]'

      assert_select 'input[name=?]', 'car[hourly_rate]'
    end
  end
end
