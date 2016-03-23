class CreateTargetCategories < ActiveRecord::Migration
  def change
    create_table :target_categories do |t|
      t.integer :target_id
      t.string :name
      t.text :description
      
      t.datetime :deleted_at, index: true
      t.timestamps null: false
    end
  end
end
