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

ActiveRecord::Schema.define(version: 20150831193829) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adventures", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.integer  "bar_id"
    t.integer  "weekend_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "bars", force: :cascade do |t|
    t.integer  "stereotype_id"
    t.string   "bar_name"
    t.string   "description"
    t.string   "image"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "review"
    t.string   "display_address"
    t.string   "url"
  end

  add_index "bars", ["stereotype_id"], name: "index_bars_on_stereotype_id", using: :btree

  create_table "restaurants", force: :cascade do |t|
    t.integer  "stereotype_id"
    t.string   "restaurant_name"
    t.string   "description"
    t.string   "image"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "review"
    t.string   "display_address"
    t.string   "url"
  end

  add_index "restaurants", ["stereotype_id"], name: "index_restaurants_on_stereotype_id", using: :btree

  create_table "stereotypes", force: :cascade do |t|
    t.string   "stereotype_name"
    t.string   "neighborhood_name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "tagline"
    t.string   "job"
    t.string   "friends"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "weekends", force: :cascade do |t|
    t.integer  "stereotype_id"
    t.string   "weekend_name"
    t.string   "description"
    t.string   "image"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "weekends", ["stereotype_id"], name: "index_weekends_on_stereotype_id", using: :btree

  add_foreign_key "bars", "stereotypes"
  add_foreign_key "restaurants", "stereotypes"
  add_foreign_key "weekends", "stereotypes"
end
