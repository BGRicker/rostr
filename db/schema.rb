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

ActiveRecord::Schema.define(version: 2018_11_02_195504) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.bigint "employee_id"
    t.bigint "client_id"
    t.date "start_date"
    t.boolean "current"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_assignments_on_client_id"
    t.index ["employee_id"], name: "index_assignments_on_employee_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "skills"
    t.boolean "current"
    t.bigint "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "project"
    t.string "sponsor"
    t.integer "days_left"
    t.string "email"
    t.string "external_id"
    t.index ["employee_id"], name: "index_clients_on_employee_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.string "location"
    t.boolean "full_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "assignments", "clients"
  add_foreign_key "assignments", "employees"
  add_foreign_key "clients", "employees"
end
