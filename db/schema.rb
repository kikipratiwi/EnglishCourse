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

ActiveRecord::Schema.define(version: 20160901013308) do

  create_table "lessons", force: :cascade do |t|
    t.string   "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "levels", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "lesson_id"
    t.integer  "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reports", ["lesson_id"], name: "index_reports_on_lesson_id"
  add_index "reports", ["student_id"], name: "index_reports_on_student_id"

  create_table "rooms", force: :cascade do |t|
    t.string   "name"
    t.integer  "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "gender"
    t.date     "birthday"
    t.text     "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "level_id"
    t.integer  "room_id"
  end

  add_index "students", ["level_id"], name: "index_students_on_level_id"
  add_index "students", ["room_id"], name: "index_students_on_room_id"

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.string   "gender"
    t.date     "birthday"
    t.text     "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "lesson_id"
  end

  add_index "teachers", ["lesson_id"], name: "index_teachers_on_lesson_id"

end
