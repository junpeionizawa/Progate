class UserSection < ApplicationRecord
	belongs_to :user
	belongs_to :section
	# validates :useranswer, presence: true
	# useranswer
end
