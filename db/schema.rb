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

ActiveRecord::Schema.define(version: 2018_06_07_211836) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cohorts", force: :cascade do |t|
    t.string "name"
    t.date "start_date"
    t.date "end_date"
    t.bigint "course_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_cohorts_on_course_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "total_hours"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instructor_cohorts", force: :cascade do |t|
    t.bigint "instructor_id"
    t.bigint "cohort_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cohort_id"], name: "index_instructor_cohorts_on_cohort_id"
    t.index ["instructor_id"], name: "index_instructor_cohorts_on_instructor_id"
  end

  create_table "instructors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "DOB"
    t.string "highest_education"
    t.integer "salary"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_cohorts", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "cohort_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cohort_id"], name: "index_student_cohorts_on_cohort_id"
    t.index ["student_id"], name: "index_student_cohorts_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "DOB"
    t.string "highest_education"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cohorts", "courses"
  add_foreign_key "instructor_cohorts", "cohorts"
  add_foreign_key "instructor_cohorts", "instructors"
  add_foreign_key "student_cohorts", "cohorts"
  add_foreign_key "student_cohorts", "students"
end
