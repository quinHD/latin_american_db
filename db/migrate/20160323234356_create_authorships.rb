class CreateAuthorships< ActiveRecord::Migration
  def change
    create_table :authorships do |t|
      t.references :authorshipable, polymorphic: true, null: false

      t.datetime :deleted_at, index: true
      t.timestamps null: false
    end

    create_table :acts_authorships, id: false do |t|
      t.belongs_to :authorship, index: true
      t.belongs_to :act, index: true
    end
  end
end
