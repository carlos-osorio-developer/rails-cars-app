require 'rails_helper'

RSpec.describe Review, type: :model do
  let(:user) { FactoryBot.create(:user) }
  let(:car) { FactoryBot.create(:car, user_id: user.id) }

  describe 'when user_id is empty' do
    it 'should not be valid' do
      review = Review.new(user_id: nil, car_id: car.id, rate: 5, content: 'test')
      expect(review.valid?).to be false
      expect(review.errors.full_messages).to include('Usermust exist')
    end
  end
end
