class AddSectionIdToScores < ActiveRecord::Migration[5.2]
  def change
    add_column :scores, :section_id, :integer
  end
end
