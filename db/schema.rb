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

ActiveRecord::Schema.define(version: 2018_11_18_124103) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "connections", force: :cascade do |t|
    t.boolean "accepted"
    t.boolean "mentor"
    t.boolean "mentee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "requested_user_id"
    t.text "expectations_message"
    t.text "request_message"
    t.index ["user_id", "requested_user_id"], name: "index_connections_on_user_id_and_requested_user_id", unique: true
  end

  create_table "events", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.string "address"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "events_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "event_id", null: false
    t.index ["user_id", "event_id"], name: "index_events_users_on_user_id_and_event_id"
  end

  create_table "stories", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.date "date"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.float "age"
    t.string "gender"
    t.string "avatar_link"
    t.string "password_digest"
    t.string "location"
    t.text "personal_msg"
    t.string "skype"
    t.string "linkedin"
    t.string "job_title"
    t.float "years_exp"
    t.string "industry"
    t.string "email"
    t.boolean "bme"
    t.boolean "lgbt"
    t.boolean "share_bme"
    t.boolean "share_lgbt"
    t.boolean "mentor"
    t.boolean "mentee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "availability"
    t.string "advises_on"
  end

end
