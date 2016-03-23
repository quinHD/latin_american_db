class CreateActCategories < ActiveRecord::Migration
  def change
    create_table :act_categories do |t|
      t.string :name, null: false
      t.string :description

      t.datetime :deleted_at, index: true
      t.timestamps null: false
    end

    create_table :act_categories_acts, id: false do |t|
      t.belongs_to :act_category, index: true
      t.belongs_to :act, index: true
    end
  end
end
