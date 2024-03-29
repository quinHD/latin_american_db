class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.string :name, null: false
      t.text :description

      t.datetime :deleted_at, index: true
      t.timestamps null: false
    end
  end
end
