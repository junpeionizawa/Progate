class AddScoreanswerToScores < ActiveRecord::Migration[5.2]
  def change
    add_column :scores, :score, :string
  end
end
