class CreateActOrganizations < ActiveRecord::Migration
  def change
    create_table :act_organizations do |t|
      t.references :organizable, polymorphic: true, null: false

      t.datetime :deleted_at, index: true
      t.timestamps null: false
    end

    create_table :act_organizations_acts do |t|
      t.belongs_to :act, index: true
      t.belongs_to :act_organization, index: true
    end
  end
end
