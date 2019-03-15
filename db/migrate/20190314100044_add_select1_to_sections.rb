class AddSelect1ToSections < ActiveRecord::Migration[5.2]
  def change
    add_column :sections, :select1, :string
  end
end
