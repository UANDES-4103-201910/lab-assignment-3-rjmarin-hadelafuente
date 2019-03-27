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

ActiveRecord::Schema.define(version: 2019_03_27_121009) do

  create_table "event_informations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "start_date"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_informations_on_event_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ticket_orders", force: :cascade do |t|
    t.integer "amount_payed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ticket_relations", force: :cascade do |t|
    t.integer "ticket_order_id"
    t.integer "ticket_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ticket_order_id"], name: "index_ticket_relations_on_ticket_order_id"
    t.index ["ticket_type_id"], name: "index_ticket_relations_on_ticket_type_id"
  end

  create_table "ticket_types", force: :cascade do |t|
    t.integer "price"
    t.string "category"
    t.integer "user_id"
    t.integer "event_information_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_information_id"], name: "index_ticket_types_on_event_information_id"
    t.index ["user_id"], name: "index_ticket_types_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "email"
    t.integer "phone"
    t.string "password"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
