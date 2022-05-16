require 'rails_helper'

RSpec.describe Car, type: :model do
  describe 'when email is not unique' do
    it 'should not be valid' do
      FactoryBot.create(:user, email: 'first@test.c')
      user2 = FactoryBot.build(:user, email: 'first@test.c')
      expect(user2.valid?).to be false
      expect(user2.errors.full_messages).to include('Correo electrónico ya está en uso')
    end
  end
end
