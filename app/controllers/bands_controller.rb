class BandsController < ApplicationController
	def show
		@band = Performer.find(params[:id])
	end

	def new
  	end

	def create
 		@band = Performer.new(band_params)
 
  		@band.save
 		redirect_to @band
	end
 
	private
  		def band_params
    		params.require(:band).permit(:name, :genre, :explicitlyrics)
 	 end
end
