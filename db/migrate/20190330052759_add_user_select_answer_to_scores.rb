class AddUserSelectAnswerToScores < ActiveRecord::Migration[5.2]
  def change
    add_column :scores, :user_select_answer, :string
  end
end
