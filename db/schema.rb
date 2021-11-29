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

ActiveRecord::Schema.define(version: 2021_11_29_000803) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "answers", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "question_id"
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "aulas", force: :cascade do |t|
    t.string "name"
    t.integer "duration"
    t.string "theme"
    t.date "date"
    t.integer "number"
    t.string "associated_video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "curso_id"
    t.index ["curso_id"], name: "index_aulas_on_curso_id"
    t.index ["user_id"], name: "index_aulas_on_user_id"
  end

  create_table "classes", force: :cascade do |t|
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
    t.string "category"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_cursos_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.date "publication_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "aula_id"
    t.index ["aula_id"], name: "index_questions_on_aula_id"
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "respuesta", force: :cascade do |t|
    t.string "name"
    t.string "pregunta_asociada"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text "description"
    t.integer "punctuation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "curso_id"
    t.index ["curso_id"], name: "index_reviews_on_curso_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
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
    t.boolean "admin"
    t.text "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_cursos", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "curso_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["curso_id"], name: "index_users_cursos_on_curso_id"
    t.index ["user_id"], name: "index_users_cursos_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "answers", "questions"
  add_foreign_key "answers", "users"
  add_foreign_key "aulas", "cursos"
  add_foreign_key "aulas", "users"
  add_foreign_key "cursos", "users"
  add_foreign_key "questions", "aulas"
  add_foreign_key "questions", "users"
  add_foreign_key "reviews", "cursos"
  add_foreign_key "reviews", "users"
  add_foreign_key "users_cursos", "cursos"
  add_foreign_key "users_cursos", "users"
end
