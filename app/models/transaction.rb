class Transaction < ApplicationRecord
	belongs_to :challenger, class_name: 'User', :foreign_key => 'challenger_id'
    belongs_to :author, class_name: 'User', :foreign_key => 'author_id'
end
