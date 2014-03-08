class ConversionController < ApplicationController
	before_filter :authenticate_user!
	def index
	end
	def convert
		input_value = params['input_value']
		input_unit = Unit.new(input_value)
		p(current_user)
		p  "Converting------------------------------------------------------------"
		converted_unit = input_unit >> current_user.units.distance
        #p "Converting------------------------------------------------------------"
        converted_unit=converted_unit.to_s("%0.2f")
		p converted_unit
        respond_to do |format|
	        format.json { render :json => {"conversion_value" => converted_unit}}
	    end
	end
end
