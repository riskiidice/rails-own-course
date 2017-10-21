class Remove < ActiveRecord::Migration[5.1]
  def change
    remove_column :news ,:timestamps
  end
end
