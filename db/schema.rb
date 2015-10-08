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

ActiveRecord::Schema.define(version: 20151008124335) do

  create_table "languages", force: :cascade do |t|
    t.string   "locale",     limit: 10,                null: false
    t.string   "language",   limit: 20,                null: false
    t.boolean  "active",                default: true, null: false
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "languages", ["locale"], name: "idx_locale", unique: true, using: :btree

  create_table "login_attempts", force: :cascade do |t|
    t.integer  "user_id",    limit: 4,                  null: false
    t.string   "ip_address", limit: 15,                 null: false
    t.string   "user_agent", limit: 255,                null: false
    t.boolean  "success",                default: true, null: false
    t.datetime "created_at",                            null: false
  end

  add_index "login_attempts", ["user_id"], name: "idx_user_id", using: :btree

  create_table "permissions", force: :cascade do |t|
    t.string   "label",       limit: 20,                null: false
    t.string   "description", limit: 50
    t.boolean  "active",                 default: true, null: false
    t.integer  "created_by",  limit: 4
    t.datetime "created_at",                            null: false
  end

  add_index "permissions", ["created_by"], name: "idx_created_by", using: :btree
  add_index "permissions", ["label"], name: "idx_label", unique: true, using: :btree

  create_table "permissions_roles", id: false, force: :cascade do |t|
    t.integer "role_id",       limit: 4, null: false
    t.integer "permission_id", limit: 4, null: false
  end

  add_index "permissions_roles", ["role_id", "permission_id"], name: "idx_role_permission", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "label",       limit: 10,                null: false
    t.string   "description", limit: 30
    t.boolean  "active",                 default: true, null: false
    t.integer  "created_by",  limit: 4
    t.datetime "created_at",                            null: false
  end

  add_index "roles", ["created_by"], name: "idx_created_by", using: :btree
  add_index "roles", ["label"], name: "idx_label", unique: true, using: :btree

  create_table "user_passwords", force: :cascade do |t|
    t.integer  "user_id",    limit: 4,   null: false
    t.string   "password",   limit: 255, null: false
    t.string   "question_1", limit: 255
    t.string   "answer_1",   limit: 255
    t.string   "question_2", limit: 255
    t.string   "answer_2",   limit: 255
    t.datetime "expires_at"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "user_passwords", ["user_id"], name: "idx_user_id", using: :btree

  create_table "user_profiles", id: false, force: :cascade do |t|
    t.integer "user_id", limit: 4
    t.string  "gender",  limit: 1,   default: "m", null: false
    t.string  "fname",   limit: 30
    t.string  "lname",   limit: 30
    t.string  "mobile",  limit: 20,                null: false
    t.string  "photo",   limit: 255
  end

  add_index "user_profiles", ["fname"], name: "idx_fname", using: :btree
  add_index "user_profiles", ["lname"], name: "idx_lname", using: :btree
  add_index "user_profiles", ["mobile"], name: "idx_mobile", using: :btree
  add_index "user_profiles", ["user_id"], name: "idx_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",             limit: 20,                 null: false
    t.string   "email",                limit: 50,                 null: false
    t.string   "confirmation_token",   limit: 10
    t.datetime "confirmation_sent_at"
    t.datetime "confirmed_at"
    t.string   "unconfirmed_email",    limit: 50
    t.boolean  "locked",                          default: false
    t.boolean  "deleted",                         default: false
    t.boolean  "blacklisted",                     default: false
    t.integer  "language_id",          limit: 4,  default: 1
    t.integer  "created_by",           limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.boolean  "failed_attemps",                  default: false
  end

  add_index "users", ["confirmation_token"], name: "idx_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "idx_email", unique: true, using: :btree
  add_index "users", ["language_id"], name: "idx_language_id", using: :btree
  add_index "users", ["username"], name: "idx_username", unique: true, using: :btree

  add_foreign_key "login_attempts", "users"
  add_foreign_key "permissions", "users", column: "created_by"
  add_foreign_key "roles", "users", column: "created_by"
  add_foreign_key "user_passwords", "users"
  add_foreign_key "user_profiles", "users"
  add_foreign_key "users", "languages"
end
