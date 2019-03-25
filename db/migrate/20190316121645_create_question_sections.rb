class CreateQuestionSections < ActiveRecord::Migration[5.2]
  def change
    create_table :question_sections do |t|

       t.integer :section_id
       t.integer :question_id
       t.string  :sectionanswer
       t.integer :sectionscore,default: 0
      t.timestamps
    end
  end
end
