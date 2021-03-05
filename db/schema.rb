# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_05_032513) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contracts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "property_id"
    t.string "listing_date"
    t.string "update_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "favorite_properties", force: :cascade do |t|
    t.string "property_id"
    t.string "user_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "src"
    t.integer "property_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "prop_type"
    t.integer "sqft"
    t.integer "year_built"
    t.string "full_address"
    t.string "county"
    t.string "city"
    t.string "state"
    t.float "latitude"
    t.float "longitude"
    t.string "neighborhoods"
    t.boolean "allow_pets"
    t.string "prop_status"
    t.string "owner_contact"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "bedrooms"
    t.string "bathrooms"
    t.integer "user_id"
    t.string "state_code"
    t.string "price"
    t.string "list_date"
    t.string "last_update"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.string "website"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "levels"
    t.string "languages"
    t.string "latitude"
    t.string "longtitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "name"
    t.string "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
