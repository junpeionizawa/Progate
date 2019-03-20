class Choice < ApplicationRecord
	belongs_to :section

	validate :check_number_of_sections

	def check_number_of_sections
		if section && section.choices.count > 2
			errors.add(:section, "選択肢は２つまでです。")
		end
	end

end
