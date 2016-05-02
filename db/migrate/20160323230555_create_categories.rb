class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.string :description

      t.datetime :deleted_at, index: true
      t.timestamps null: false
    end

    create_table :acts_categories, id: false do |t|
      t.belongs_to :category, index: true
      t.belongs_to :act, index: true
    end
  end
end
