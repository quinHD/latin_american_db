# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160523185455) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "act_organizations", force: :cascade do |t|
    t.integer  "organizable_id",   null: false
    t.string   "organizable_type", null: false
    t.datetime "deleted_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "act_organizations", ["deleted_at"], name: "index_act_organizations_on_deleted_at", using: :btree

  create_table "act_organizations_acts", force: :cascade do |t|
    t.integer "act_id"
    t.integer "act_organization_id"
  end

  add_index "act_organizations_acts", ["act_id"], name: "index_act_organizations_acts_on_act_id", using: :btree
  add_index "act_organizations_acts", ["act_organization_id"], name: "index_act_organizations_acts_on_act_organization_id", using: :btree

  create_table "act_targets", force: :cascade do |t|
    t.integer  "targetable_id",   null: false
    t.string   "targetable_type", null: false
    t.datetime "deleted_at"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "act_targets", ["deleted_at"], name: "index_act_targets_on_deleted_at", using: :btree

  create_table "act_targets_acts", force: :cascade do |t|
    t.integer "act_id"
    t.integer "act_target_id"
  end

  add_index "act_targets_acts", ["act_id"], name: "index_act_targets_acts_on_act_id", using: :btree
  add_index "act_targets_acts", ["act_target_id"], name: "index_act_targets_acts_on_act_target_id", using: :btree

  create_table "act_types", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "description"
    t.datetime "deleted_at"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "act_types", ["deleted_at"], name: "index_act_types_on_deleted_at", using: :btree

  create_table "act_types_acts", id: false, force: :cascade do |t|
    t.integer "act_type_id"
    t.integer "act_id"
  end

  add_index "act_types_acts", ["act_id"], name: "index_act_types_acts_on_act_id", using: :btree
  add_index "act_types_acts", ["act_type_id"], name: "index_act_types_acts_on_act_type_id", using: :btree

  create_table "acts", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name",        null: false
    t.text     "description"
    t.date     "start_date",  null: false
    t.date     "end_date"
    t.string   "note"
    t.datetime "deleted_at"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "acts", ["deleted_at"], name: "index_acts_on_deleted_at", using: :btree

  create_table "modifications", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "act_id",     null: false
    t.string   "column"
    t.string   "from_value"
    t.string   "to_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organization_groups", force: :cascade do |t|
    t.integer  "organization_id"
    t.string   "name"
    t.datetime "deleted_at"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "organization_groups", ["deleted_at"], name: "index_organization_groups_on_deleted_at", using: :btree

  create_table "organization_subgroups", force: :cascade do |t|
    t.integer  "organization_group_id"
    t.string   "name"
    t.datetime "deleted_at"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "organization_subgroups", ["deleted_at"], name: "index_organization_subgroups_on_deleted_at", using: :btree

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.string   "supranational"
    t.string   "number_participants"
    t.string   "country"
    t.datetime "deleted_at"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "organizations", ["deleted_at"], name: "index_organizations_on_deleted_at", using: :btree

  create_table "places", force: :cascade do |t|
    t.integer  "act_id"
    t.string   "name"
    t.string   "type_of_area"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "country"
    t.string   "city"
    t.string   "province"
    t.text     "description"
    t.datetime "deleted_at"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "places", ["deleted_at"], name: "index_places_on_deleted_at", using: :btree

  create_table "results", force: :cascade do |t|
    t.integer  "act_id"
    t.integer  "arrested"
    t.integer  "deaths"
    t.integer  "economic_cost"
    t.integer  "injured"
    t.integer  "missing"
    t.integer  "personal_attacks"
    t.integer  "property_attacks"
    t.datetime "deleted_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "results", ["deleted_at"], name: "index_results_on_deleted_at", using: :btree

  create_table "sources", force: :cascade do |t|
    t.integer  "act_id",      null: false
    t.text     "description", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "target_categories", force: :cascade do |t|
    t.integer  "target_id",   null: false
    t.string   "name",        null: false
    t.text     "description"
    t.datetime "deleted_at"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "target_categories", ["deleted_at"], name: "index_target_categories_on_deleted_at", using: :btree

  create_table "target_subcategories", force: :cascade do |t|
    t.integer  "target_category_id", null: false
    t.string   "name",               null: false
    t.text     "description"
    t.datetime "deleted_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "target_subcategories", ["deleted_at"], name: "index_target_subcategories_on_deleted_at", using: :btree

  create_table "targets", force: :cascade do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.datetime "deleted_at"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "targets", ["deleted_at"], name: "index_targets_on_deleted_at", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "role"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "deleted_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["deleted_at"], name: "index_users_on_deleted_at", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
