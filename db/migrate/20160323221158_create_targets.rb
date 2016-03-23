class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|

      t.timestamps null: false
    end
  end
end
