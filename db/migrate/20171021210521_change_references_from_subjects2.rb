class ChangeReferencesFromSubjects2 < ActiveRecord::Migration[5.1]
  def change
    remove_column :subjects, :references
  end
end
