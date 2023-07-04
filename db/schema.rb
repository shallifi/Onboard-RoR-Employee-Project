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

ActiveRecord::Schema[7.0].define(version: 2023_06_26_004911) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agencies", force: :cascade do |t|
    t.string "agency_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "department_name"
    t.bigint "agency_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agency_id"], name: "index_departments_on_agency_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "new_to_scc"
    t.string "driving_for_position"
    t.string "transporting_children"
    t.string "attending_preservice"
    t.string "start_date"
    t.bigint "agency_id"
    t.bigint "department_id"
    t.bigint "office_id"
    t.integer "extension"
    t.string "additional_info"
    t.bigint "title_id"
    t.string "badge_photo"
    t.boolean "supervisor"
    t.bigint "employee_id"
    t.index ["agency_id"], name: "index_employees_on_agency_id"
    t.index ["department_id"], name: "index_employees_on_department_id"
    t.index ["employee_id"], name: "index_employees_on_employee_id"
    t.index ["office_id"], name: "index_employees_on_office_id"
    t.index ["title_id"], name: "index_employees_on_title_id"
  end

  create_table "employees_needs", id: false, force: :cascade do |t|
    t.bigint "employee_id", null: false
    t.bigint "need_id", null: false
  end

  create_table "needs", force: :cascade do |t|
    t.string "need_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offices", force: :cascade do |t|
    t.string "office_name"
    t.string "address"
    t.string "office_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "titles", force: :cascade do |t|
    t.string "title_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "departments", "agencies"
  add_foreign_key "employees", "agencies"
  add_foreign_key "employees", "departments"
  add_foreign_key "employees", "employees"
  add_foreign_key "employees", "offices"
  add_foreign_key "employees", "titles"
end
