class Section < ApplicationRecord
	#belongs_to :question
	belongs_to :user
	has_many :choices, inverse_of: :section
	has_many :scores
	accepts_nested_attributes_for :choices, reject_if: :all_blank, allow_destroy: true
end
