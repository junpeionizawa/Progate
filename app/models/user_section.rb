class UserSection < ApplicationRecord
	belongs_to :user
	has_one :section
end
