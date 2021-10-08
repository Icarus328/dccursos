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

ActiveRecord::Schema.define(version: 2021_10_05_162332) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aulas", force: :cascade do |t|
    t.string "name"
    t.integer "duration"
    t.string "theme"
    t.date "date"
    t.integer "number"
    t.string "associated_video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "associatedcurso"
  end

  create_table "clases", force: :cascade do |t|
    t.integer "name"
    t.string "duration"
    t.string "theme"
    t.date "date"
    t.integer "number"
    t.string "associated_video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cursos", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "duration"
    t.string "teacher"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "course"
    t.date "publication_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text "description"
    t.integer "punctuation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cursoasociado"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.integer "age"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
