class CreateRedos < ActiveRecord::Migration[5.2]
  def change
    create_table :redos do |t|
    	t.integer :user_id
    	t.integer :question_id

      t.timestamps
    end
  end
end
