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

ActiveRecord::Schema.define(version: 20151218190555) do

  create_table "application_renewals", force: :cascade do |t|
    t.string   "name"
    t.string   "semester"
    t.integer  "year"
    t.integer  "credits"
    t.integer  "capactiy"
    t.text     "problems"
    t.text     "dbowie"
    t.text     "engagement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.integer  "coursenum"
    t.string   "title"
    t.text     "description"
    t.boolean  "active"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "grades", force: :cascade do |t|
    t.boolean  "orientation",  default: false
    t.boolean  "exco_fair",    default: false
    t.boolean  "agreement",    default: false
    t.float    "midterm_eval"
    t.float    "auditing"
    t.float    "final_eval"
    t.float    "final_paper"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "instances", force: :cascade do |t|
    t.integer  "year"
    t.string   "semester"
    t.string   "location"
    t.string   "time"
    t.integer  "section"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "title"
    t.boolean  "renewal"
    t.text     "status"
    t.integer  "new_course_id"
  end

  create_table "instructor_apps", force: :cascade do |t|
    t.string   "course"
    t.integer  "year"
    t.string   "semester"
    t.string   "tnumber"
    t.text     "status"
    t.text     "qualifications"
    t.text     "teaching_exp"
    t.text     "problems"
    t.text     "excos_taken"
    t.text     "exco_problems"
    t.text     "safe_space"
    t.integer  "instructors_id"
    t.integer  "new_course_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.string   "tnumber"
    t.string   "pronouns"
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "new_courses", force: :cascade do |t|
    t.string   "name"
    t.string   "semester"
    t.integer  "year"
    t.string   "divison"
    t.text     "description"
    t.text     "why_exco"
    t.text     "evaluations"
    t.integer  "credits"
    t.integer  "hours_meet"
    t.integer  "hours_outside"
    t.integer  "capactiy"
    t.string   "signature"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "email"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "users_instances", id: false, force: :cascade do |t|
    t.integer "users_id"
    t.integer "instances_id"
  end

  add_index "users_instances", ["instances_id"], name: "index_users_instances_on_instances_id"
  add_index "users_instances", ["users_id"], name: "index_users_instances_on_users_id"

end
