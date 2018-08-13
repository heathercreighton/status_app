class State < ApplicationRecord
	#validates the presence of a status and message before saving
	validates_presence_of :status
	validate :correct_status_set

	# validate :correct_status_set, on: :create
	# validate :correct_status_set, on: :update


	private
		def correct_status_set
			unless self.status.present? && (self.status == "UP" || self.status == "DOWN")
				errors.add(:status, "must have the value of either 'UP' or 'DOWN'")
			end
		end		
end
