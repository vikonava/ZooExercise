class Zoo < ActiveRecord::Base
	has_many :animals

	def species
		species = animals.select('lower(species) AS species').distinct
		if species.empty?
			'none'
		else
			species.map(&:species).join(', ')
		end
	end
end
