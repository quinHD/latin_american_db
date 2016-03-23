class CreateTargetCategories < ActiveRecord::Migration
  def change
    create_table :target_categories do |t|

      t.timestamps null: false
    end
  end
end
