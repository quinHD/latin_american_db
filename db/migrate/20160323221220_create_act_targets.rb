class CreateActTargets < ActiveRecord::Migration
  def change
    create_table :act_targets do |t|
      t.references :targetable, polymorphic: true, null: false

      t.datetime :deleted_at, index: true
      t.timestamps null: false
    end

    create_table :act_targets_acts do |t|
      t.belongs_to :act, index: true
      t.belongs_to :act_target, index: true
    end
  end
end
