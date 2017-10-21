class AddCourseStudent < ActiveRecord::Migration[5.1]
  def change
    rename_column :students, :class, :s_class
  end
end
