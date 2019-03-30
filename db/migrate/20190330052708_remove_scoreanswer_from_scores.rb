class RemoveScoreanswerFromScores < ActiveRecord::Migration[5.2]
  def change
    remove_column :scores, :score, :string
  end
end
