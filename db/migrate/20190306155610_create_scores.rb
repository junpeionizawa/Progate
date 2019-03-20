class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
     t.integer :user_id
     t.integer :question_id
     t.integer :point,default: 0

      t.timestamps
    end
  end
end
