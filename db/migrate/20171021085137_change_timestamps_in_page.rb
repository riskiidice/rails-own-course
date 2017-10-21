class ChangeTimestampsInPage < ActiveRecord::Migration[5.1]
  def change
    change_column :news, :highlight ,:boolean, default: false
  end
end
