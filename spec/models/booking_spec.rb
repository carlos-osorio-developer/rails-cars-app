require 'rails_helper'

RSpec.describe Booking, type: :model do
  let(:user) { FactoryBot.create(:user) }
  let(:car) { FactoryBot.create(:car, user_id: user.id) }

  describe 'when user_id is empty' do
    it 'should not be valid' do
      booking = Booking.new(user_id: nil, car_id: car.id, hours: 2)
      expect(booking.valid?).to be false
      expect(booking.errors.full_messages).to include('Usermust exist')
    end
  end
end
