class CreateOrganizationSubgroups < ActiveRecord::Migration
  def change
    create_table :organization_subgroups do |t|
      t.references :organization_group
      t.string :name

      t.datetime :deleted_at, index: true
      t.timestamps null: false
    end
  end
end
