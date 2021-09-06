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

ActiveRecord::Schema.define(version: 20210906143539) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articulos", force: :cascade do |t|
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "infraccions", force: :cascade do |t|
    t.integer  "articulo_id"
    t.integer  "propietario_id"
    t.integer  "oficial_id"
    t.float    "importe"
    t.datetime "fecha"
    t.string   "calle"
    t.string   "municipio"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["articulo_id"], name: "index_infraccions_on_articulo_id", using: :btree
    t.index ["oficial_id"], name: "index_infraccions_on_oficial_id", using: :btree
    t.index ["propietario_id"], name: "index_infraccions_on_propietario_id", using: :btree
  end

  create_table "licenses", force: :cascade do |t|
    t.string   "numero"
    t.string   "tipo"
    t.datetime "fecha_caducidad"
    t.integer  "propietario_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["propietario_id"], name: "index_licenses_on_propietario_id", using: :btree
  end

  create_table "oficials", force: :cascade do |t|
    t.string   "numero_agente"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "personas", force: :cascade do |t|
    t.string   "personable_type"
    t.integer  "personable_id"
    t.string   "nombres"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["personable_type", "personable_id"], name: "index_personas_on_personable_type_and_personable_id", using: :btree
  end

  create_table "propietarios", force: :cascade do |t|
    t.string   "curp"
    t.datetime "fecha_nacimiento"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "vehiculos", force: :cascade do |t|
    t.integer  "numero_tarjeta_circulacion"
    t.string   "numero_serie"
    t.string   "numero_placa"
    t.datetime "fecha_caducidad_tarjeta"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_foreign_key "infraccions", "articulos"
  add_foreign_key "infraccions", "oficials"
  add_foreign_key "infraccions", "propietarios"
  add_foreign_key "licenses", "propietarios"
end
