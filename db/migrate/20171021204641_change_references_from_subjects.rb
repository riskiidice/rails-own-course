class ChangeReferencesFromSubjects < ActiveRecord::Migration[5.1]
  def change
    add_column :subjects, :students, :references
  end
end
