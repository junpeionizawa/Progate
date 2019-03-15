class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
    	t.integer :user_id
    	t.string :created_at
    	t.integer :question_status, default: 0

      t.timestamps
    end
  end
end
