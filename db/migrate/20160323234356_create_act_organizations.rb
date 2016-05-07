class CreateActOrganizations < ActiveRecord::Migration
  def change
    create_table :act_organizations do |t|
      t.references :organizable, polymorphic: true, null: false

      t.datetime :deleted_at, index: true
      t.timestamps null: false
    end
  end
end
