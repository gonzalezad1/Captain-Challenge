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

ActiveRecord::Schema.define(version: 20171209082655) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "battles", force: :cascade do |t|
    t.integer "personnageone_id"
    t.integer "personnagetwo_id"
    t.integer "winner"
    t.text "recapfight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personnageone_id"], name: "index_battles_on_personnageone_id"
    t.index ["personnagetwo_id"], name: "index_battles_on_personnagetwo_id"
  end

  create_table "perso_weaps", force: :cascade do |t|
    t.bigint "personnage_id"
    t.bigint "weapon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personnage_id"], name: "index_perso_weaps_on_personnage_id"
    t.index ["weapon_id"], name: "index_perso_weaps_on_weapon_id"
  end

  create_table "personnages", force: :cascade do |t|
    t.string "name"
    t.integer "exp"
    t.integer "life"
    t.integer "velocity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "attac"
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.integer "attack"
    t.integer "defense"
    t.integer "velocity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
