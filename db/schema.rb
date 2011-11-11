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

ActiveRecord::Schema.define(:version => 20110906090835) do

  create_table "pcorps", :force => true do |t|
    t.integer  "reno"
    t.string   "cnamek"
    t.string   "cname"
    t.string   "posi"
    t.string   "repk"
    t.string   "rep"
    t.date     "bd"
    t.string   "ad"
    t.string   "tel"
    t.string   "fax"
    t.string   "eml"
    t.integer  "cap"
    t.integer  "cy"
    t.integer  "emp"
    t.date     "acc"
    t.boolean  "md"
    t.boolean  "wbu"
    t.boolean  "wco"
    t.boolean  "wgs"
    t.boolean  "io"
    t.boolean  "ban"
    t.text     "note"
    t.integer  "bno"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
