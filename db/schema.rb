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

ActiveRecord::Schema[7.0].define(version: 2023_02_04_175312) do
  create_table "accounts", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.integer "trainer_map_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trainer_map_id"], name: "index_accounts_on_trainer_map_id"
  end

  create_table "exercise_templates", force: :cascade do |t|
    t.integer "sets"
    t.integer "reps"
    t.integer "weight"
    t.integer "exercise_type_id", null: false
    t.integer "workout_template_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercise_type_id"], name: "index_exercise_templates_on_exercise_type_id"
    t.index ["workout_template_id"], name: "index_exercise_templates_on_workout_template_id"
  end

  create_table "exercise_types", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.integer "sets"
    t.integer "reps"
    t.integer "weight"
    t.string "notes"
    t.integer "workout_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workout_id"], name: "index_exercises_on_workout_id"
  end

  create_table "trainer_maps", force: :cascade do |t|
    t.string "student_id"
    t.string "trainer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workout_template_maps", force: :cascade do |t|
    t.integer "workout_template_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workout_templates", force: :cascade do |t|
    t.string "name"
    t.integer "public"
    t.string "day_of_week"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.string "name"
    t.string "notes"
    t.integer "account_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_workouts_on_account_id"
  end

  add_foreign_key "exercise_templates", "exercise_types"
  add_foreign_key "exercise_templates", "workout_templates"
  add_foreign_key "exercises", "workouts"
  add_foreign_key "workouts", "accounts"
end
