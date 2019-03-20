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

ActiveRecord::Schema.define(version: 2019_03_20_123955) do

  create_table "choices", force: :cascade do |t|
    t.integer "section_id"
    t.string "select"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "question_sections", force: :cascade do |t|
    t.integer "section_id"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.integer "question_status", default: 0
    t.datetime "updated_at", null: false
  end

  create_table "redos", force: :cascade do |t|
    t.integer "user_id"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scores", force: :cascade do |t|
    t.integer "user_id"
    t.integer "question_id"
    t.integer "point", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.integer "user_id"
    t.integer "question_id"
    t.string "question_sentence"
    t.string "answer"
    t.string "mistake"
    t.string "otherwise"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "deleted_at"
    t.index ["deleted_at"], name: "index_sections_on_deleted_at"
  end

  create_table "user_sections", force: :cascade do |t|
    t.integer "user_id"
    t.integer "section_id"
    t.integer "testscore", default: 0
    t.string "useranswer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name"
    t.string "nickname"
    t.text "profile"
    t.string "profile_image"
    t.integer "experience", default: 0
    t.string "uid"
    t.string "provider"
    t.string "location"
    t.string "image"
    t.string "twitter_name"
    t.datetime "update_at"
    t.integer "admin_status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "deleted_at"
    t.integer "level", default: 0
    t.index ["deleted_at"], name: "index_users_on_deleted_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
