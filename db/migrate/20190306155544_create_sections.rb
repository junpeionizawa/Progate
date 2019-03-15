class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
     t.integer :question_id
     t.string :question_sentence
     t.string :answer

      t.timestamps
    end
  end
end
