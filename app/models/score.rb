class Score < ApplicationRecord
	belongs_to :question
	belongs_to :section
end
