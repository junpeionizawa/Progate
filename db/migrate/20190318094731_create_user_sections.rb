class CreateUserSections < ActiveRecord::Migration[5.2]
  def change
    create_table :user_sections do |t|
      t.integer :user_id
	  t.integer :section_id
	  t.integer :testscore,default:0
      t.string  :useranswer
      t.timestamps
    end
  end
end
