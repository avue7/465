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

ActiveRecord::Schema.define(version: 20160713090521) do

  create_table "drought_users", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "droughts_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "drought_users", ["droughts_id"], name: "index_drought_users_on_droughts_id"
  add_index "drought_users", ["user_id"], name: "index_drought_users_on_user_id"

  create_table "droughts", force: :cascade do |t|
    t.integer  "climate_id"
    t.decimal  "drought_severity"
    t.integer  "year"
    t.string   "state_abbreviation"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "precipitations", force: :cascade do |t|
    t.integer  "climate_id"
    t.decimal  "per_year"
    t.integer  "year"
    t.string   "state_abbreviation"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "precipitations", ["user_id"], name: "index_precipitations_on_user_id"

  create_table "regions", force: :cascade do |t|
    t.integer  "climate_id"
    t.string   "state_abbreviation"
    t.integer  "state_id"
    t.integer  "drought_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "regions", ["drought_id"], name: "index_regions_on_drought_id"
  add_index "regions", ["state_id"], name: "index_regions_on_state_id"

  create_table "states", force: :cascade do |t|
    t.string   "state_name"
    t.string   "state_abbreviation"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                   default: "",    null: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
