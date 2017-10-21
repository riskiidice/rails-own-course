class RemoveUsersIdFromSubjects < ActiveRecord::Migration[5.1]
  def change
    remove_column :subjects ,:users_id
  end
end
