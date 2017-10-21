class ChangeReferencesFromSubjects < ActiveRecord::Migration[5.1]
  def change
    remove_column :subjects, :references
    add_column :subjects, :students, :references
  end
end
