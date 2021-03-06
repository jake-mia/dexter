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

ActiveRecord::Schema.define(version: 20170310064232) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "challenges", force: :cascade do |t|
    t.string   "name"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "checkins", force: :cascade do |t|
    t.integer  "user_challenge_id"
    t.boolean  "completed"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["user_challenge_id"], name: "index_checkins_on_user_challenge_id", using: :btree
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree
  end

  create_table "steps", force: :cascade do |t|
    t.integer  "challenge_id"
    t.string   "name"
    t.boolean  "completed"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "description"
    t.datetime "complete_by"
    t.string   "Tmsg"
    t.index ["challenge_id"], name: "index_steps_on_challenge_id", using: :btree
  end

  create_table "user_challenges", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "challenge_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "step_id"
    t.datetime "complete_by"
    t.datetime "completed_time"
    t.boolean  "completed"
    t.index ["challenge_id"], name: "index_user_challenges_on_challenge_id", using: :btree
    t.index ["step_id"], name: "index_user_challenges_on_step_id", using: :btree
    t.index ["user_id"], name: "index_user_challenges_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "phone"
  end

  add_foreign_key "checkins", "user_challenges"
  add_foreign_key "steps", "challenges"
  add_foreign_key "user_challenges", "challenges"
  add_foreign_key "user_challenges", "steps"
  add_foreign_key "user_challenges", "users"
end
