class AddIdsToTransactions < ActiveRecord::Migration[5.2]
  def change
    add_column :transactions, :challenger_id, :integer
    add_column :transactions, :author_id, :integer
  end
end
