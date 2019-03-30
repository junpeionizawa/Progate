class Section < ApplicationRecord
	#belongs_to :question
	belongs_to :user
	has_many :choices, inverse_of: :section
	has_many :scores
	has_many :user_sections
	has_many :question_sections
	has_many :questions,through: :question_sections
	acts_as_paranoid
	# accepts_nested_attributes_for :choices, reject_if: :all_blank, allow_destroy: true
	# validates :question_sentence, presence: true
	# validates :question_sentence,length: {in: 1..20}
	# validates :answer, presence: true
	# validates :answer,length: {in: 1..20}
	# validates :mistake, presence: true
	# validates :answer,length: {in: 1..20}
	# validates :otherwise,length: {in: 1..40}
end
