class UnitsController < ApplicationController
	def show
		redirect_to "/"
	end

	def update
		@units = Units.find(params[:id])
		if @units.update(units_params)
		redirect_to "/"
	else
		render 'edit'
	end
end

	def edit
	@units=Units.find params[:id]
	end

	def units_params
		params.require(:units).permit(:distance,:speed,:currency)

	end
	DISTANCES = [METERS = 'meters', MILES = 'miles']

end
