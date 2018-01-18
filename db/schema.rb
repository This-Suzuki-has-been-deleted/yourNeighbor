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

ActiveRecord::Schema.define(version: 20180118032140) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string "email"
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "columns", force: :cascade do |t|
    t.string "title"
    t.string "text", limit: 1000
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "map_reports", force: :cascade do |t|
    t.string "map_report_text"
    t.string "maps_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maps", id: false, force: :cascade do |t|
    t.string "maps_id"
    t.string "map_name"
    t.string "map_lat"
    t.string "map_lng"
    t.date "map_date"
    t.string "email"
  end

  create_table "prefs", force: :cascade do |t|
    t.string "pref_name"
    t.string "pref_lat"
    t.string "pref_lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quiestions", force: :cascade do |t|
    t.string "title"
    t.string "text"
    t.string "eva"
    t.string "tag1"
    t.string "tag2"
    t.string "tag3"
    t.string "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "review_reports", force: :cascade do |t|
    t.string "review_report_text"
    t.string "reviews_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", id: false, force: :cascade do |t|
    t.string "reviews_id"
    t.string "review_title"
    t.string "review_text"
    t.string "review_eva", default: "good"
    t.date "review_date"
    t.string "email"
    t.string "maps_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "tag_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.binary "userIcon"
    t.string "userName"
    t.string "userFullName"
    t.string "userAddress"
    t.string "userAge"
    t.string "userType"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
