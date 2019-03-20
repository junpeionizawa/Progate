class RemoveRecordFromQuestionsection < ActiveRecord::Migration[5.2]
  def change
    remove_column :question_sections, :record, :integer
  end
end
