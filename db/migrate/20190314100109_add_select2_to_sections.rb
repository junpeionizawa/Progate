class AddSelect2ToSections < ActiveRecord::Migration[5.2]
  def change
    add_column :sections, :select2, :string
  end
end
