class CreateTargetSubcategories < ActiveRecord::Migration
  def change
    create_table :target_subcategories do |t|

      t.timestamps null: false
    end
  end
end
