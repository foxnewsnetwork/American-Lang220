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

ActiveRecord::Schema.define(:version => 20111207095350) do

  create_table "ads", :force => true do |t|
    t.integer  "ad_id"
    t.integer  "views"
    t.integer  "duration"
    t.integer  "clicks"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "adstats", :force => true do |t|
    t.integer  "ad_id"
    t.integer  "user_id"
    t.integer  "views",      :default => 0
    t.integer  "clicks",     :default => 0
    t.integer  "closes",     :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "adstats", ["ad_id", "user_id"], :name => "index_adstats_on_ad_id_and_user_id", :unique => true
  add_index "adstats", ["ad_id"], :name => "index_adstats_on_ad_id"
  add_index "adstats", ["user_id"], :name => "index_adstats_on_user_id"

  create_table "advertiser_sign_ups", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "org"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "betasignups", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "castersignups", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "youtube"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "organization"
    t.string   "referrer"
    t.string   "fullname"
    t.string   "details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "corporations", :force => true do |t|
    t.integer  "corporation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
