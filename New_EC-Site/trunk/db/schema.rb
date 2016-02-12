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

ActiveRecord::Schema.define(version: 20160209095602) do

  create_table "cpn_m_sales_dsts", id: false, force: :cascade do |t|
    t.integer "CPN_ID",   limit: 4,  null: false
    t.string  "ACCNT_CD", limit: 30, null: false
  end

  add_index "cpn_m_sales_dsts", ["CPN_ID", "ACCNT_CD"], name: "index_cpn_m_sales_dsts_on_CPN_ID_and_ACCNT_CD", unique: true, using: :btree

  create_table "cpn_m_total_sales_dscnts", id: false, force: :cascade do |t|
    t.integer "CPN_ID",                limit: 4,                          null: false
    t.integer "SALES_RANGE_NO",        limit: 4,                          null: false
    t.decimal "SALES_RANGE_MIN_VALUE",           precision: 20, scale: 2
    t.decimal "DSCNT_VALUE",                     precision: 20, scale: 2
    t.decimal "DSCNT_RATEE",                     precision: 5,  scale: 2
  end

  add_index "cpn_m_total_sales_dscnts", ["CPN_ID", "SALES_RANGE_NO"], name: "index_cpn_m_total_sales_dscnts_on_CPN_ID_and_SALES_RANGE_NO", unique: true, using: :btree

  create_table "cpn_ms", primary_key: "CPN_ID", force: :cascade do |t|
    t.string   "CPN_CD",          limit: 30,                            null: false
    t.string   "CPN_ST",          limit: 1,                             null: false
    t.string   "CPN_TITLE",       limit: 2000,                          null: false
    t.string   "CPN_CLS",         limit: 1,                             null: false
    t.string   "CPN_DISCNT_TYPE", limit: 1,                             null: false
    t.string   "VNDR_CPN",        limit: 1,                             null: false
    t.integer  "USE_LIMIT",       limit: 1,                             null: false
    t.datetime "START_DT",                                              null: false
    t.datetime "EXPIRATION_DT"
    t.decimal  "DSCNT_VALUE",                  precision: 20, scale: 2
    t.decimal  "DSCNT_RATE",                   precision: 5,  scale: 2
    t.string   "TRGT_PRD_CNDTN",  limit: 2000
    t.string   "EXCLD_PRD_CNDTN", limit: 2000
  end

  create_table "nfr_media_ms", primary_key: "NFR_MEDIA_MNG_NO", force: :cascade do |t|
    t.string "SKU",            limit: 30
    t.string "NFR_MEDIA_STTS", limit: 1,  null: false
  end

  create_table "nfr_media_rents", primary_key: "NFR_MEDIA_RENT_ID", force: :cascade do |t|
    t.string "RENT_PRSN",        limit: 30, null: false
    t.date   "RENT_DT",                     null: false
    t.date   "RTRN_DT"
    t.string "ORDER_NO",         limit: 30, null: false
    t.string "nfr_media_mng_no", limit: 30
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "update_at"
    t.datetime "updated_at",             null: false
  end

end
