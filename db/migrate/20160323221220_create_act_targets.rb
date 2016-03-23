class CreateActTargets < ActiveRecord::Migration
  def change
    create_table :act_targets do |t|

      t.timestamps null: false
    end
  end
end
