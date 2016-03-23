class CreateTargetSubcategories < ActiveRecord::Migration
  def change
    create_table :target_subcategories do |t|
      t.integer :target_category_id
      t.string :name
      t.text :description

      t.datetime :deleted_at, index: true
      t.timestamps null: false
    end
  end
end
