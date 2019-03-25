class AddTestanswerToScores < ActiveRecord::Migration[5.2]
  def change
    add_column :scores, :testanswer, :string
  end
end
