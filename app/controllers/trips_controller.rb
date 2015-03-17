class TripsController < ApplicationController

	def index
		@trips = Trip.all
	
	end

	def show
		@trips = Trip.find_by(id: params["id"])
	end

	def new
		@trips = Trip.new
	end

	def create
		trips_params = params.require(:trip).permit!
		if Trip.create(trips_params)
			redirect_to trips_path
		else
			render text: "Danger! Danger!"
		end			
	end		

	def edit
		@trips = Trip.find_by(id: params["id"])
	end
	
	def update
		trip_params = params.require(:trip).permit!
		@trips = Trip.find_by(id: params["id"])
		@trips.update(trip_params)
		redirect_to trips_path
	end

  def destroy
    @trips = Trip.find_by(id: params["id"])
    @trips.destroy
    redirect_to trips_path	
  end
    
end

