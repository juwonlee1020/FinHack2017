class Patent < ApplicationRecord
	has_many :keywords
	has_many :descriptions
end
