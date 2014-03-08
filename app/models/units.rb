class Units < ActiveRecord::Base
	belongs_to :user
	DISTANCES = [METERS = 'meters', MILES = 'miles']

	def distances_enum
		[METERS, MILES]
	end
end
