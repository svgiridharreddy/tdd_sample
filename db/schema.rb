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

ActiveRecord::Schema.define(version: 2020_06_26_081528) do

  create_table "challenges", force: :cascade do |t|
    t.integer "hacker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "ques"
    t.text "ans"
    t.index ["hacker_id"], name: "index_challenges_on_hacker_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "department"
    t.string "doj"
    t.string "contact_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "follows", force: :cascade do |t|
    t.integer "user_id"
    t.integer "following_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hackers", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "total_challenges"
  end

  create_table "homes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "address"
    t.string "district"
    t.string "state"
    t.integer "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_locations_on_employee_id"
  end

  create_table "salaries", force: :cascade do |t|
    t.integer "salary_amount"
    t.integer "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_salaries_on_employee_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tweet_tags", force: :cascade do |t|
    t.integer "tweet_id"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_tweet_tags_on_tag_id"
    t.index ["tweet_id"], name: "index_tweet_tags_on_tweet_id"
  end

  create_table "tweets", force: :cascade do |t|
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_tweets_on_user_id"
  end

  create_table "user_groups", force: :cascade do |t|
    t.integer "user_id"
    t.integer "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_user_groups_on_group_id"
    t.index ["user_id"], name: "index_user_groups_on_user_id"
  end

  create_table "userdups", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.integer "phone_number"
    t.string "country_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password"
    t.integer "otp"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_name"
    t.string "provider", limit: 50, default: "", null: false
    t.string "uid", limit: 200, default: "", null: false
    t.string "otp_secret_key"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.string "brand"
    t.integer "no_of_wheels"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
