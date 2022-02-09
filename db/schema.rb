# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_02_09_002452) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "goals", force: :cascade do |t|
    t.string "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "memos", force: :cascade do |t|
    t.string "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "session_id"
    t.index ["session_id"], name: "index_memos_on_session_id"
  end

  create_table "notes", force: :cascade do |t|
    t.string "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "session_id"
    t.bigint "st_goal_id"
    t.bigint "lt_goal_id"
    t.index ["lt_goal_id"], name: "index_plans_on_lt_goal_id"
    t.index ["session_id"], name: "index_plans_on_session_id"
    t.index ["st_goal_id"], name: "index_plans_on_st_goal_id"
  end

  create_table "practices", force: :cascade do |t|
    t.string "word"
    t.boolean "correctness"
    t.string "prompt_level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "session_id", null: false
    t.bigint "sound_id"
    t.index ["session_id"], name: "index_practices_on_session_id"
    t.index ["sound_id"], name: "index_practices_on_sound_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "plan_id"
    t.string "text"
    t.index ["plan_id"], name: "index_sessions_on_plan_id"
  end

  create_table "sounds", force: :cascade do |t|
    t.string "text"
    t.string "word_position"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "session_id"
    t.bigint "practice_id", null: false
    t.index ["practice_id"], name: "index_sounds_on_practice_id"
    t.index ["session_id"], name: "index_sounds_on_session_id"
  end

  add_foreign_key "memos", "sessions"
  add_foreign_key "plans", "goals", column: "lt_goal_id"
  add_foreign_key "plans", "goals", column: "st_goal_id"
  add_foreign_key "plans", "sessions"
  add_foreign_key "practices", "sessions"
  add_foreign_key "practices", "sounds"
  add_foreign_key "sessions", "plans"
  add_foreign_key "sounds", "practices"
  add_foreign_key "sounds", "sessions"
end
