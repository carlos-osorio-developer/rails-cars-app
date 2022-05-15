require 'rails_helper'

RSpec.describe Car, type: :model do
  let(:user) { FactoryBot.create(:user) }

  describe 'when user_id is empty' do
    it 'should not be valid' do
      car = Car.new(name: 'Test title!', description: 'This is a test description', image_url: 'draft',
        model: 'draft', hourly_rate: '1,3', user_id: nil)
      expect(car.valid?).to be false
      expect(car.errors.full_messages).to include('User must exist')
    end
  end    
end
