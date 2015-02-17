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

ActiveRecord::Schema.define(version: 20150216195852) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "resorts", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "country"
    t.string   "website"
    t.string   "phone_number"
    t.integer  "skiable_acres"
    t.integer  "lift_count"
    t.integer  "run_count"
    t.string   "major_airport"
    t.string   "local_airport"
    t.boolean  "snowboard"
    t.integer  "level_green"
    t.integer  "level_blue"
    t.integer  "level_black"
    t.integer  "level_double_black"
    t.string   "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "sno_country_id"
    t.text     "conditions"
    
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "zip"
    t.boolean  "ski"
    t.boolean  "snowboard"
    t.string   "email"
    t.boolean  "travel"
    t.integer  "group_size"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "airport"
    t.integer  "level"
    t.integer  "decision_driver"
  end

end
