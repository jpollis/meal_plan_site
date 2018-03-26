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

ActiveRecord::Schema.define(version: 20180322145112) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.integer "plan_id"
    t.string "password_digest"
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["plan_id"], name: "index_customers_on_plan_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string "meal1"
    t.text "description"
    t.string "meal2"
    t.string "meal3"
    t.string "meal4"
    t.string "meal5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string "number"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
