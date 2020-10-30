class Report < ApplicationRecord
	has_many :keywords
	has_many :todos
end
