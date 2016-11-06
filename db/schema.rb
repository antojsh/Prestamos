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

ActiveRecord::Schema.define(version: 20161106025030) do

  create_table "cards", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "nombres"
    t.string   "apellidos"
    t.integer  "identificacion"
    t.date     "fecha_nacimiento"
    t.string   "direccion"
    t.integer  "latitud"
    t.integer  "longitud"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "nombres"
    t.string   "apellidos"
    t.integer  "identificacion"
    t.date     "fecha_nacimiento"
    t.string   "direccion"
    t.integer  "telefono"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "overdrafts", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "employee_id"
    t.integer  "valor"
    t.string   "plazo"
    t.string   "tipo_plazo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "overdrafts", ["client_id"], name: "index_overdrafts_on_client_id"
  add_index "overdrafts", ["employee_id"], name: "index_overdrafts_on_employee_id"

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
