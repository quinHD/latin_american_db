class CreateActs < ActiveRecord::Migration
  def change
    create_table :acts do |t|
      t.references :user
      t.string :name, null: false
      t.text :description
      t.date :start_date, null: false
      t.date :end_date
      t.string :note

      t.datetime :deleted_at, index: true
      t.timestamps null: false
    end
  end
end
