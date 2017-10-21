class RemoveForClassId < ActiveRecord::Migration[5.1]
  def change
    remove_column :subjects ,:for_class_id
  end
end
