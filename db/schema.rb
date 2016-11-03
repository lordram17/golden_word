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

ActiveRecord::Schema.define(version: 20161028115851) do

  create_table "assessments", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "teacher_id"
    t.integer  "course_id"
  end

  add_index "assessments", ["course_id"], name: "index_assessments_on_course_id"
  add_index "assessments", ["teacher_id"], name: "index_assessments_on_teacher_id"

  create_table "course", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "teacher_id"
  end

  add_index "course", ["teacher_id"], name: "index_course_on_teacher_id"

  create_table "course_student", id: false, force: :cascade do |t|
    t.integer "course_id"
    t.integer "students_id"
  end

  add_index "course_student", ["course_id"], name: "index_course_student_on_course_id"
  add_index "course_student", ["students_id"], name: "index_course_student_on_students_id"

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "password"
    t.string   "remember_token"
  end

  add_index "students", ["remember_token"], name: "index_students_on_remember_token"

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "password"
    t.string   "remember_token"
  end

  add_index "teachers", ["remember_token"], name: "index_teachers_on_remember_token"

  create_table "videos", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "teacher_id"
    t.integer  "course_id"
  end

  add_index "videos", ["course_id"], name: "index_videos_on_course_id"
  add_index "videos", ["teacher_id"], name: "index_videos_on_teacher_id"

end
