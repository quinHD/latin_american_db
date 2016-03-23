class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.reference :act
      t.string :name
      t.string :type_of_area
      t.string :latitude
      t.string :longitude
      t.string :country
      t.string :city
      t.string :province

      t.datetime :deleted_at, index: true
      t.timestamps null: false
    end
  end
end
