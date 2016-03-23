class CreateActTargets < ActiveRecord::Migration
  def change
    create_table :act_targets do |t|
      t.references :act
      t.references :targetable, polymorphic: true, null: false
      t.timestamps null: false
    end
  end
end
