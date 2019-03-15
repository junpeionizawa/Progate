class AddOtherwiseToSections < ActiveRecord::Migration[5.2]
  def change
    add_column :sections, :otherwise, :text
  end
end
