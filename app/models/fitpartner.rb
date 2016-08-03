class Fitpartner < ApplicationRecord
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

	has_many :friendships
	has_many :users, :through => :friendships

	def self.search(search)
		where("category ILIKE ? OR especialidad ILIKE ? OR namefit ILIKE ? OR address ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%#", "%#{search}%") 
	 	
	end

end
