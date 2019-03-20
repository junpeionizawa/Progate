class Section < ApplicationRecord
	#belongs_to :question
	belongs_to :user
	has_one :user_section
	has_many :choices, inverse_of: :section
	has_many :scores
	has_many :question_sections
	acts_as_paranoid
	# accepts_nested_attributes_for :choices, reject_if: :all_blank, allow_destroy: true
end
