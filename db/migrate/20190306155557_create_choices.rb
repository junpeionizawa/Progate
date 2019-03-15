class CreateChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :choices do |t|
      t.integer :section_id
      t.string :select

      t.timestamps
    end
  end
end
