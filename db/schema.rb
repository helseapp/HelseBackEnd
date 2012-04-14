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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120414141544) do

  create_table "employees", :force => true do |t|
    t.integer  "workplace_id"
    t.string   "firstname",    :null => false
    t.string   "lastname",     :null => false
    t.date     "birthdate",    :null => false
    t.string   "address",      :null => false
    t.string   "postnumber",   :null => false
    t.string   "postplace"
    t.string   "email",        :null => false
    t.string   "mobilephone",  :null => false
    t.string   "telephone"
    t.boolean  "woman",        :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "messages", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "patient_notes", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "patients", :force => true do |t|
    t.integer  "workplace_id"
    t.string   "firstname",          :null => false
    t.string   "lastname",           :null => false
    t.date     "birthdate",          :null => false
    t.string   "address",            :null => false
    t.string   "postnumber",         :null => false
    t.string   "postplace"
    t.string   "lat"
    t.string   "lng"
    t.string   "marital_status"
    t.string   "email"
    t.string   "telephone"
    t.string   "mobilephone"
    t.integer  "average_visit_time"
    t.boolean  "woman",              :null => false
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "visits", :force => true do |t|
    t.integer  "patient_id"
    t.integer  "employee_id"
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "workplaces", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "postnumber"
    t.string   "postplace"
    t.string   "telephone"
    t.string   "lat"
    t.string   "lng"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
