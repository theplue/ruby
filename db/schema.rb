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

ActiveRecord::Schema.define(version: 20160214231852) do

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "department"
    t.integer  "number"
    t.integer  "credits"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professors", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "office"
    t.integer  "student_id"
    t.string   "department"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "professors", ["student_id"], name: "index_professors_on_student_id"

  create_table "section_students", id: false, force: :cascade do |t|
    t.integer "section_id"
    t.integer "student_id"
  end

  add_index "section_students", ["section_id"], name: "index_section_students_on_section_id"
  add_index "section_students", ["student_id"], name: "index_section_students_on_student_id"

  create_table "sections", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "professor_id"
    t.integer  "number"
    t.string   "location"
    t.time     "classTime"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "sections", ["course_id"], name: "index_sections_on_course_id"
  add_index "sections", ["professor_id"], name: "index_sections_on_professor_id"

  create_table "students", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.integer  "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
