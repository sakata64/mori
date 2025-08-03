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

ActiveRecord::Schema[7.1].define(version: 2025_08_03_082636) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "destinations", force: :cascade do |t|
    t.bigint "location_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_destinations_on_location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.decimal "lat", precision: 10, scale: 6, null: false
    t.decimal "lon", precision: 10, scale: 6, null: false
    t.string "address", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_locations_on_user_id"
  end

  create_table "parkings", force: :cascade do |t|
    t.decimal "lat", precision: 10, scale: 6, null: false
    t.decimal "lon", precision: 10, scale: 6, null: false
    t.string "address", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "memo"
    t.string "name"
    t.string "floor"
  end

  create_table "route_segments", force: :cascade do |t|
    t.bigint "starting_point_id", null: false
    t.bigint "destination_id", null: false
    t.decimal "distance", precision: 8, scale: 2, null: false
    t.integer "duration", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_id"], name: "index_route_segments_on_destination_id"
    t.index ["starting_point_id"], name: "index_route_segments_on_starting_point_id"
  end

  create_table "routes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.decimal "distance", precision: 8, scale: 2, null: false
    t.integer "duration", null: false
    t.json "raw_route_data", null: false
    t.string "name"
    t.text "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_routes_on_user_id"
  end

  create_table "selected_route_segments", force: :cascade do |t|
    t.bigint "route_segment_id", null: false
    t.integer "order_index", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "route_id", null: false
    t.index ["route_id"], name: "index_selected_route_segments_on_route_id"
    t.index ["route_segment_id"], name: "index_selected_route_segments_on_route_segment_id"
  end

  create_table "starting_points", force: :cascade do |t|
    t.bigint "location_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_starting_points_on_location_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "destinations", "locations"
  add_foreign_key "locations", "users"
  add_foreign_key "route_segments", "destinations"
  add_foreign_key "route_segments", "starting_points"
  add_foreign_key "routes", "users"
  add_foreign_key "selected_route_segments", "route_segments"
  add_foreign_key "selected_route_segments", "routes"
  add_foreign_key "starting_points", "locations"
end
