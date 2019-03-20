class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
     t.integer :user_id
     t.integer :question_id
     t.string :question_sentence
     t.string :answer
     t.string :mistake
     t.string :otherwise

      t.timestamps
    end
  end
end
