class Report < ApplicationRecord
	has_many :keywords
	has_many :todos

	def self.search(search)
		if search
			libelle = Report.find_by(label: search)
			if libelle
				self.where(report_id: libelle)
			else
				Report.all
			end
		else
			Report.all
		end
	end
end
