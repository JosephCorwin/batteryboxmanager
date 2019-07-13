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

ActiveRecord::Schema.define(version: 20190519050602) do

  create_table "batteries", force: :cascade do |t|
    t.string   "lbid"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.         "rider_id"
    t.         "battery_type_id"
    t.string   "inspection_grade"
    t.boolean  "rental"
    t.string   "rental_owner"
    t.string   "input_connector"
    t.string   "output_connector"
    t.string   "age"
    t.string   "notes"
    t.string   "case_material"
    t.string   "padding_type"
  end

  create_table "battery_types", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "cell_type"
    t.integer  "cell_count"
    t.boolean  "bms_present"
    t.decimal  "nominal_voltage"
    t.decimal  "minimum_voltage"
    t.decimal  "maximum_voltage"
    t.integer  "amp_hours"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "charger_types", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "voltage_output"
    t.string   "amperage_output"
    t.boolean  "grounded"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "chargers", force: :cascade do |t|
    t.string   "lbid"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.         "rider_id"
    t.         "charger_type_id"
    t.string   "connector_type"
  end

  create_table "check_ins", force: :cascade do |t|
    t.integer  "rider_id"
    t.integer  "battery_id"
    t.integer  "charger_id"
    t.integer  "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["battery_id"], name: "index_check_ins_on_battery_id"
    t.index ["charger_id"], name: "index_check_ins_on_charger_id"
    t.index ["rider_id"], name: "index_check_ins_on_rider_id"
    t.index ["section_id"], name: "index_check_ins_on_section_id"
  end

  create_table "logs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.         "rider_id"
    t.         "battery_id"
    t.         "charger_id"
    t.         "section_id"
    t.string   "log_type"
  end

  create_table "riders", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "phone_number"
    t.string   "lbid"
    t.string   "email"
  end

  create_table "searches", force: :cascade do |t|
    t.string   "rider"
    t.string   "battery"
    t.string   "charger"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string   "name"
    t.integer  "outlets"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
