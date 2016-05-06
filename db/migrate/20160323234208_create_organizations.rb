class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :supranational
      t.string :number_participants
      t.string :country

      t.datetime :deleted_at, index: true
      t.timestamps null: false
    end
  end
end

