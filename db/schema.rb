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

ActiveRecord::Schema[7.0].define(version: 2024_02_09_190030) do
  create_table "magia", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "nome"
    t.string "tempo_cast"
    t.text "descricao"
    t.string "req"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "monstros", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "nome"
    t.string "tamtype"
    t.integer "armor"
    t.integer "life"
    t.integer "des"
    t.integer "for"
    t.integer "dez"
    t.integer "con"
    t.integer "inte"
    t.integer "sab"
    t.integer "car"
    t.string "st"
    t.string "skills"
    t.string "resis"
    t.string "sense"
    t.string "lan"
    t.integer "cr"
    t.text "hab"
    t.boolean "leng_res"
    t.text "leng_skills"
    t.text "actions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
