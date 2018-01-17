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

ActiveRecord::Schema.define(version: 20180116225209) do

  create_table "vehicles", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.integer "miles"
    t.string "vin"
    t.string "body_description"
    t.string "body_style"
    t.integer "body_door_count"
    t.integer "city_mpg"
    t.integer "highway_mpg"
    t.string "classification"
    t.string "drive_train_description"
    t.string "drive_train_type"
    t.integer "drive_train_wheel_count"
    t.string "drive_train_front_rear"
    t.string "engine_description"
    t.integer "engine_displacement"
    t.string "engine_displacement_unit"
    t.string "engine_block_style"
    t.integer "engine_cyclinder_count"
    t.integer "engine_valve_count"
    t.string "engine_fuel_type"
    t.string "engine_fuel_intake"
    t.string "engine_camshaft"
    t.string "exterior_color"
    t.string "exterior_base_color"
    t.string "exterior_color_code"
    t.string "exterior_color_finish"
    t.string "trim_level"
    t.decimal "price"
    t.integer "year"
    t.integer "days_on_lot"
    t.datetime "on_lot_at"
    t.string "status"
    t.string "interior_color"
    t.string "interior_fabric"
    t.string "model_type"
    t.string "new_or_used"
    t.text "features"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
