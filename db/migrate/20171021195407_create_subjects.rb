class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.references :for_class, foreign_key: true

      t.timestamps
    end
  end
end
