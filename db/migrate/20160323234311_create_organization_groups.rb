class CreateOrganizationGroups < ActiveRecord::Migration
  def change
    create_table :organization_groups do |t|
      t.references :organization
      t.string :name

      t.datetime :deleted_at, index: true
      t.timestamps null: false
    end
  end
end
