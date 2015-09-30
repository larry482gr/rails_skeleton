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

ActiveRecord::Schema.define(version: 20150930164749) do

  create_table "languages", force: :cascade do |t|
    t.string   "locale",     limit: 10, null: false
    t.string   "language",   limit: 20, null: false
    t.boolean  "active"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "languages", ["locale"], name: "index_languages_on_locale", unique: true, using: :btree

  create_table "login_attempts", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "ip_address", limit: 15
    t.string   "user_agent", limit: 255
    t.boolean  "success"
    t.datetime "created_at",             null: false
  end

  add_index "login_attempts", ["user_id"], name: "index_login_attempts_on_user_id", using: :btree

  create_table "password_questions", force: :cascade do |t|
    t.string   "question",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "password_questions", ["question"], name: "index_password_questions_on_question", unique: true, using: :btree

  create_table "user_passwords", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "question_1", limit: 4
    t.string   "answer_1",   limit: 255
    t.integer  "question_2", limit: 4
    t.string   "answer_2",   limit: 255
    t.datetime "expires_at"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "user_passwords", ["question_1"], name: "index_user_passwords_on_question_1", using: :btree
  add_index "user_passwords", ["question_2"], name: "index_user_passwords_on_question_2", using: :btree
  add_index "user_passwords", ["user_id"], name: "index_user_passwords_on_user_id", using: :btree

  create_table "user_profiles", id: false, force: :cascade do |t|
    t.integer "user_id",         limit: 4
    t.string  "gender",          limit: 1
    t.string  "fname",           limit: 20
    t.string  "lname",           limit: 30
    t.string  "mobile",          limit: 20
    t.string  "photo",           limit: 255
    t.text    "addresses",       limit: 65535
    t.string  "city",            limit: 50
    t.string  "region",          limit: 80
    t.string  "zipcode",         limit: 20
    t.string  "country",         limit: 100
    t.integer "failed_attempts", limit: 1,     default: 0
  end

  add_index "user_profiles", ["mobile"], name: "index_user_profiles_on_mobile", unique: true, using: :btree
  add_index "user_profiles", ["user_id"], name: "index_user_profiles_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",             limit: 20
    t.string   "email",                limit: 50
    t.string   "confirmation_token",   limit: 10
    t.datetime "confirmation_sent_at",                            null: false
    t.datetime "confirmed_at"
    t.string   "unconfirmed_email",    limit: 50
    t.boolean  "locked",                          default: false
    t.boolean  "deleted",                         default: false
    t.boolean  "blacklisted",                     default: false
    t.integer  "language_id",          limit: 4
    t.integer  "created_by",           limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["language_id"], name: "index_users_on_language_id", using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  add_foreign_key "login_attempts", "users"
  add_foreign_key "user_passwords", "password_questions", column: "question_1"
  add_foreign_key "user_passwords", "password_questions", column: "question_2"
  add_foreign_key "user_passwords", "users"
  add_foreign_key "user_profiles", "users"
  add_foreign_key "users", "languages"
end
