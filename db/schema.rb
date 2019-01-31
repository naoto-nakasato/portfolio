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

ActiveRecord::Schema.define(version: 2019_01_28_103643) do

  create_table "men", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "uid"
    t.string "provider"
    t.string "name"
    t.string "image"
    t.integer "age"
    t.string "introduction"
    t.string "residence"
    t.index ["email"], name: "index_men_on_email", unique: true
    t.index ["reset_password_token"], name: "index_men_on_reset_password_token", unique: true
  end

  create_table "reseves", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "place"
    t.integer "people"
    t.time "date_time"
    t.string "age"
    t.integer "stay_time"
    t.integer "man_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "women", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "uid"
    t.string "provider"
    t.string "name"
    t.string "image"
    t.integer "age"
    t.string "introduction"
    t.string "residence"
    t.index ["email"], name: "index_women_on_email", unique: true
    t.index ["reset_password_token"], name: "index_women_on_reset_password_token", unique: true
  end

end
