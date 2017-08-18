class VenuesController < ApplicationController
	def index
    	@venue = Venue.all
  	end

	def show
		@venue = Venue.find(params[:id])
	end

	def new
  	end

	def create
 		@venue = Venue.new(venue_params)
 
  		@venue.save
 		redirect_to @venue
	end
 
	private
  		def venue_params
    		params.require(:venue).permit(:name, :city, :state, :familyfriendly)
 	 end

end
