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

ActiveRecord::Schema.define(version: 20170116004111) do

  create_table "changelogs", force: :cascade do |t|
    t.string   "obj_type",   limit: 255,                 null: false
    t.integer  "obj_id",     limit: 4,                   null: false
    t.datetime "time",                                   null: false
    t.integer  "user_id",    limit: 4,                   null: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "action",     limit: 4
    t.boolean  "display",                default: false
  end

  add_index "changelogs", ["user_id"], name: "index_changelogs_on_user_id", using: :btree

  create_table "checkins", force: :cascade do |t|
    t.date     "date"
    t.time     "time"
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "checkins", ["user_id"], name: "index_checkins_on_user_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.integer  "user_id",    limit: 4,                  null: false
    t.integer  "mood",       limit: 4,     default: -1
    t.text     "message",    limit: 65535,              null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "redemptions", force: :cascade do |t|
    t.integer  "user_id",    limit: 4, null: false
    t.integer  "reward_id",  limit: 4, null: false
    t.datetime "time",                 null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "redemptions", ["reward_id"], name: "index_redemptions_on_reward_id", using: :btree
  add_index "redemptions", ["user_id"], name: "index_redemptions_on_user_id", using: :btree

  create_table "rewards", force: :cascade do |t|
    t.string   "name",        limit: 255,               null: false
    t.text     "description", limit: 65535
    t.integer  "cost",        limit: 4,     default: 0, null: false
    t.integer  "amount",      limit: 4,     default: 0, null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "user_informations", force: :cascade do |t|
    t.string   "name",                limit: 255
    t.integer  "user_id",             limit: 4
    t.integer  "age",                 limit: 4
    t.string   "gender",              limit: 255
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.integer  "credit",              limit: 4,   default: 0, null: false
    t.string   "avatar_file_name",    limit: 255
    t.string   "avatar_content_type", limit: 255
    t.integer  "avatar_file_size",    limit: 4
    t.datetime "avatar_updated_at"
  end

  add_index "user_informations", ["user_id"], name: "index_user_informations_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "changelogs", "users"
  add_foreign_key "checkins", "users"
  add_foreign_key "posts", "users"
  add_foreign_key "redemptions", "rewards"
  add_foreign_key "redemptions", "users"
  add_foreign_key "user_informations", "users"
end
