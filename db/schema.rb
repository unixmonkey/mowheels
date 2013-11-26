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

ActiveRecord::Schema.define(version: 20131125231023) do

  create_table "menus", force: true do |t|
    t.date     "menu_date"
    t.string   "main_dish1"
    t.string   "main_dish2"
    t.string   "side1"
    t.string   "side2"
    t.string   "side3"
    t.string   "diet"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipient_menus", force: true do |t|
    t.integer  "recipient_id"
    t.integer  "menu_id"
    t.date     "menu_date"
    t.string   "main_dish1"
    t.string   "main_dish2"
    t.string   "main_dish_choice"
    t.string   "side1"
    t.string   "side2"
    t.string   "side3"
    t.string   "side_choice"
    t.string   "diet"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipients", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.integer  "route_number"
    t.integer  "print_sort"
    t.string   "coldpref1"
    t.string   "coldpref2"
    t.string   "hotpref"
    t.string   "recipients_phone"
    t.date     "birthdate"
    t.string   "doctor_name"
    t.string   "doctor_phone"
    t.string   "diet"
    t.string   "substitutions"
    t.string   "contact_name"
    t.string   "contact_relationship"
    t.string   "contact_work_phone"
    t.string   "contact_phone"
    t.text     "note"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "status"
    t.string   "referred_by"
    t.text     "directions_to_home"
    t.string   "assisted"
    t.text     "payment_details"
    t.decimal  "assistance_amount"
    t.string   "billing_name"
    t.string   "billing_address"
    t.string   "billing_city"
    t.string   "billing_state"
    t.string   "billing_zip"
    t.text     "termination_reason"
    t.string   "mon_hot"
    t.string   "tue_hot"
    t.string   "wed_hot"
    t.string   "thur_hot"
    t.string   "fri_hot"
    t.string   "sat_hot"
    t.string   "sun_hot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
