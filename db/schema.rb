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

ActiveRecord::Schema.define(version: 20131121123031) do

  create_table "categories", force: true do |t|
    t.string "original"
  end

  create_table "friends", force: true do |t|
    t.integer "user_id"
    t.string  "network_id"
    t.string  "network_username"
  end

  create_table "linked_accounts", force: true do |t|
    t.integer "user_id"
    t.integer "network_id"
    t.string  "linked_account_username"
    t.string  "linked_account_password"
  end

  create_table "networks", force: true do |t|
    t.string "network_name"
    t.string "base_api_url"
    t.string "app_secret"
    t.string "app_id"
  end

  create_table "posts", force: true do |t|
    t.integer "user_id"
    t.integer "network_id"
    t.integer "category_id"
    t.integer "linked_account_id"
    t.integer "friend_id"
    t.string  "post_type"
    t.string  "comment"
    t.string  "link"
    t.date    "time_stamp"
    t.integer "views"
    t.integer "interactions"
  end

  create_table "users", force: true do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "user_email"
    t.string "user_password"
  end

end
