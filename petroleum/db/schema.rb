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

ActiveRecord::Schema.define(:version => 20111120123526) do

  create_table "active_admin_comments", :force => true do |t|
    t.integer  "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "corps", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "esrcontrols", :force => true do |t|
    t.integer  "esrlist_id"
    t.string   "name"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "esrlists", :force => true do |t|
    t.string   "name"
    t.integer  "soldier_id"
    t.boolean  "iscurrent",     :default => true
    t.date     "signaturedate"
    t.date     "enddate"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ranks", :force => true do |t|
    t.integer  "corp_id"
    t.string   "name"
    t.integer  "agelimit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rankslists", :force => true do |t|
    t.integer  "soldier_id"
    t.integer  "rank_id"
    t.date     "beginrankdate"
    t.date     "begincorpdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "soldiers", :force => true do |t|
    t.string   "name"
    t.string   "firstname"
    t.string   "usagename"
    t.date     "birthdate"
    t.boolean  "active"
    t.boolean  "ismale"
    t.integer  "payid"
    t.integer  "concertoid"
    t.integer  "ssid"
    t.boolean  "iscivilservant"
    t.string   "publicoffice"
    t.string   "employername"
    t.string   "jobname"
    t.string   "persoemail"
    t.string   "profemail"
    t.integer  "persolandphone"
    t.integer  "proflandphone"
    t.integer  "persomobilephone"
    t.integer  "profmobilephone"
    t.string   "preferedemail"
    t.integer  "preferedphone"
    t.boolean  "issma"
    t.boolean  "isvsl"
    t.boolean  "isgct"
    t.string   "l2_balescetageporte"
    t.string   "l3_resbat"
    t.string   "l4_numvoie"
    t.string   "l5_bptsabureau"
    t.string   "l6_commune"
    t.integer  "l7_codepostal"
    t.string   "l8_pays",             :default => "France"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vsaaptitudes", :force => true do |t|
    t.string   "name"
    t.text     "details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vsaaptitudeslists", :force => true do |t|
    t.integer  "vsaaptitude_id"
    t.integer  "vsalist_id"
    t.string   "name"
    t.text     "details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vsaconclusions", :force => true do |t|
    t.string   "name"
    t.text     "details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vsalists", :force => true do |t|
    t.integer  "soldier_id"
    t.integer  "vsaconclusion_id"
    t.string   "name"
    t.date     "examdate"
    t.boolean  "iscurrent",         :default => true
    t.boolean  "isapteESR"
    t.boolean  "isapteService"
    t.boolean  "isapteTir"
    t.boolean  "hasrestriction"
    t.boolean  "hastirrestriction"
    t.text     "doctorcomment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vsarestrictions", :force => true do |t|
    t.string   "name"
    t.text     "details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vsarestrictionslists", :force => true do |t|
    t.integer  "vsarestriction_id"
    t.integer  "vsalist_id"
    t.string   "name"
    t.text     "details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
