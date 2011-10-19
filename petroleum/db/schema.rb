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

ActiveRecord::Schema.define(:version => 20111018132958) do

  create_table "corps", :force => true do |t|
    t.string   "name"
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
    t.boolean  "active"
    t.boolean  "ismale"
    t.string   "firstname"
    t.string   "familyname"
    t.string   "usagename"
    t.date     "birthdate"
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
