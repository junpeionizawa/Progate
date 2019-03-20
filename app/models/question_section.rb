class QuestionSection < ApplicationRecord
	belongs_to :section
	belongs_to :question
end
