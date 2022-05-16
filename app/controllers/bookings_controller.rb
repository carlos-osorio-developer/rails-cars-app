class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user    
    @booking.car = Car.find(params[:booking][:car_id])
    @booking.end_time = Time.now + params[:booking][:hours].to_i.hours
    respond_to do |format|
      if @booking.save
        format.html { redirect_to car_path(@booking.car), notice: 'Car was successfully created.' }
        format.json { render :show, status: :created, location: @car }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_car
    @car = Car.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def booking_params
    params.require(:booking).permit(:hours, :end_time, :car_id)
  end
end
