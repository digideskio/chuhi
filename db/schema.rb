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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121104075107) do

  create_table "okubo_decks", :force => true do |t|
    t.integer  "user_id"
    t.string   "user_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "okubo_decks", ["user_id", "user_type"], :name => "index_okubo_decks_on_user_id_and_user_type"

  create_table "okubo_items", :force => true do |t|
    t.integer  "deck_id"
    t.integer  "source_id"
    t.string   "source_type"
    t.integer  "box",           :default => 0
    t.datetime "last_reviewed"
    t.datetime "next_review"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.integer  "times_right",   :default => 0
    t.integer  "times_wrong",   :default => 0
  end

  add_index "okubo_items", ["source_id", "source_type"], :name => "index_okubo_items_on_source_id_and_source_type"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "words", :force => true do |t|
    t.string   "kanji"
    t.string   "kana"
    t.string   "translation"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
