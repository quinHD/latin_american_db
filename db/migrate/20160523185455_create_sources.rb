class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.references :act, null: false
      t.text :description, null: false
      
      t.timestamps null: false
    end
  end
end
