require 'rails_helper'

RSpec.describe '/cars', type: :request do
  let(:user) { FactoryBot.create(:user) }

  before(:each) do
    sign_in user
  end

  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Car.create! valid_attributes
      get cars_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      car = Car.create! valid_attributes
      get car_url(car)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_car_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      car = Car.create! valid_attributes
      get edit_car_url(car)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Car' do
        expect do
          post cars_url, params: { car: valid_attributes }
        end.to change(Car, :count).by(1)
      end

      it 'redirects to the created car' do
        post cars_url, params: { car: valid_attributes }
        expect(response).to redirect_to(car_url(Car.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Car' do
        expect do
          post cars_url, params: { car: invalid_attributes }
        end.to change(Car, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post cars_url, params: { car: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested car' do
        car = Car.create! valid_attributes
        patch car_url(car), params: { car: new_attributes }
        car.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the car' do
        car = Car.create! valid_attributes
        patch car_url(car), params: { car: new_attributes }
        car.reload
        expect(response).to redirect_to(car_url(car))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        car = Car.create! valid_attributes
        patch car_url(car), params: { car: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested car' do
      car = Car.create! valid_attributes
      expect do
        delete car_url(car)
      end.to change(Car, :count).by(-1)
    end

    it 'redirects to the cars list' do
      car = Car.create! valid_attributes
      delete car_url(car)
      expect(response).to redirect_to(cars_url)
    end
  end
end
