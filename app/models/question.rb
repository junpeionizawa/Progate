class Question < ApplicationRecord
	#has_many :sections, inverse_of: :question
	belongs_to :user
	has_many :scores
	has_many :redos
	has_many :question_sections
	# accepts_nested_attributes_for :sections, reject_if: :all_blank, allow_destroy: true
end
