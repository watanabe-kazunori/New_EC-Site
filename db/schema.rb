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

ActiveRecord::Schema.define(version: 20160212000004) do

  create_table "cpn_m_sales_dsts", primary_key: "CPN_ID", force: :cascade do |t|
    t.string "ACCNT_CD", limit: 30, null: false
  end

  create_table "cpn_m_total_sales_dscnts", id: false, force: :cascade do |t|
    t.integer "CPN_ID",                limit: 4,                          default: 0, null: false, unsigned: true
    t.integer "SALES_RANGE_NO",        limit: 4,                          default: 0, null: false, unsigned: true
    t.decimal "SALES_RANGE_MIN_VALUE",           precision: 20, scale: 2,             null: false
    t.decimal "DSCNT_VALUE",                     precision: 20, scale: 2
    t.decimal "DSCNT_RATE",                      precision: 5,  scale: 2
  end

  add_index "cpn_m_total_sales_dscnts", ["CPN_ID", "SALES_RANGE_NO"], name: "index_cpn_m_total_sales_dscnts_on_CPN_ID_and_SALES_RANGE_NO", unique: true, using: :btree

  create_table "cpn_ms", primary_key: "CPN_ID", force: :cascade do |t|
    t.string   "CPN_CD",          limit: 30,                                        null: false
    t.string   "CPN_ST",          limit: 1,                                         null: false
    t.string   "CPN_TITLE",       limit: 2000,                                      null: false
    t.string   "CPN_CLS",         limit: 1,                                         null: false
    t.string   "CPN_DISCNT_TYPE", limit: 1,                                         null: false
    t.string   "VNDR_CPN",        limit: 1,                                         null: false
    t.integer  "USE_LIMIT",       limit: 4,                             default: 0, null: false, unsigned: true
    t.datetime "START_DT",                                                          null: false
    t.datetime "EXPIRATION_DT"
    t.decimal  "DSCNT_VALUE",                  precision: 20, scale: 2
    t.decimal  "DSCNT_RATE",                   precision: 5,  scale: 2
    t.string   "TRGT_PRD_CNDTN",  limit: 2000
    t.string   "EXCLD_PRD_CNDTN", limit: 2000
  end

end
