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

ActiveRecord::Schema.define(version: 20160218115103) do

  create_table "accnts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
    t.string   "MEMO",            limit: 2000
  end

  add_index "cpn_ms", ["CPN_ID"], name: "index_cpn_ms_on_CPN_ID", unique: true, using: :btree

  create_table "friends", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "address",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "prd_ctgry_ms", primary_key: "PRD_CTGRY_CD", force: :cascade do |t|
    t.string   "PRD_CTGRY_NAME", limit: 50
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "prd_effect_cls_ms", primary_key: "PRD_EFFECT_CLS_CD", force: :cascade do |t|
    t.string   "PRD_EFFECT_CLS_NAME", limit: 50, null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "prd_host_app_ms", primary_key: "APP_CD", force: :cascade do |t|
    t.string   "APP_NAME",   limit: 50, null: false
    t.string   "APP_VER",    limit: 50
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "prd_m_effect_csls", id: false, force: :cascade do |t|
    t.string   "SKU",               limit: 30, null: false
    t.string   "PRD_EFFECT_CLS_CD", limit: 30, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "prd_m_effect_csls", ["SKU", "PRD_EFFECT_CLS_CD"], name: "index_prd_m_effect_csls_on_SKU_and_PRD_EFFECT_CLS_CD", unique: true, using: :btree

  create_table "prd_m_host_apps", id: false, force: :cascade do |t|
    t.string   "SKU",        limit: 30, null: false
    t.string   "APP_CD",     limit: 30, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "prd_m_host_apps", ["SKU", "APP_CD"], name: "index_prd_m_host_apps_on_SKU_and_APP_CD", unique: true, using: :btree

  create_table "prd_m_whl_sl_prices", id: false, force: :cascade do |t|
    t.string   "SKU",                     limit: 30,                                      null: false
    t.string   "WHL_SL_PRICE_TYPE",       limit: 1,                                       null: false
    t.string   "WHL_SL_PRICE_VER",        limit: 30,                                      null: false
    t.decimal  "WHL_SL_PRICE_RATE",                  precision: 5,  scale: 2,             null: false
    t.decimal  "WHL_SL_PRICE",                       precision: 20, scale: 2,             null: false
    t.decimal  "PRE_CP_WHL_SL_PRIE_RATE",            precision: 5,  scale: 2
    t.decimal  "PRE_CP_WHL_SL_PRICE",                precision: 20, scale: 2
    t.decimal  "CP_PRICE_DSCNT_RATE",                precision: 5,  scale: 2
    t.decimal  "CP_PRICE_DSCNT",                     precision: 20, scale: 2
    t.datetime "START_DATE",                                                              null: false
    t.date     "END_DATE"
    t.datetime "RGSTR_DT"
    t.integer  "RGSTR_USR",               limit: 4,                           default: 0,              unsigned: true
    t.datetime "LST_UPD_DT"
    t.integer  "LST_UPD_USR",             limit: 4,                           default: 0,              unsigned: true
    t.datetime "created_at",                                                              null: false
    t.datetime "updated_at",                                                              null: false
  end

  create_table "prd_ms", primary_key: "SKU", force: :cascade do |t|
    t.string   "SKU_DVLPR",                  limit: 30
    t.string   "SKU_SOURCE_PRD",             limit: 30
    t.string   "PRD_NAME",                   limit: 50
    t.string   "PRD_NAME_SUBTITLE",          limit: 50
    t.string   "PRD_DVLPR_ORG_NAME",         limit: 50
    t.string   "PRD_CTGRY_CD",               limit: 30,               null: false
    t.string   "PRD_TYPE",                   limit: 1
    t.string   "SP_PRD_TYPE",                limit: 1
    t.string   "SET_PRD_F",                  limit: 1
    t.string   "SET_PRD_TYPE",               limit: 1
    t.string   "SALE_F",                     limit: 1
    t.string   "RCVNG_PLCNT_PRD_F",          limit: 1
    t.string   "DLVRY_LD_TIME",              limit: 100
    t.string   "DB_PRD_DLVRY_MTHD",          limit: 2000
    t.string   "LIC_TYPE",                   limit: 1
    t.integer  "LIC_FROM",                   limit: 4,    default: 0, null: false, unsigned: true
    t.integer  "LIC_TO",                     limit: 4,    default: 0, null: false, unsigned: true
    t.string   "DSTRBTR_DISP_F",             limit: 1
    t.string   "PRD_ST",                     limit: 1
    t.string   "ACDMC_LIC_F",                limit: 1
    t.string   "PRD_DLVRY_MTHD",             limit: 2000
    t.string   "PRD_DESC",                   limit: 2000
    t.string   "PRD_NOTE",                   limit: 2000
    t.string   "PRD_NOTICE",                 limit: 2000
    t.string   "PRD_OTHER_INFO",             limit: 2000
    t.string   "URL_PRD",                    limit: 500
    t.string   "URL_INSTALL_GUID",           limit: 500
    t.string   "URL_LIC_AUTH_GUID",          limit: 500
    t.string   "URL_INSTALLER",              limit: 500
    t.string   "URL_PRD_IMAGE",              limit: 500
    t.string   "URL_DL",                     limit: 500
    t.string   "MEMO",                       limit: 2000
    t.integer  "SUBSCRIPTION_LIC_TERM",      limit: 4,    default: 0, null: false, unsigned: true
    t.string   "SUBSCRIPTION_LIC_TERM_UNIT", limit: 1
    t.integer  "MNT_LIC_TERM",               limit: 4,    default: 0, null: false, unsigned: true
    t.string   "MNT_LIC_TERM_UNIT",          limit: 1
    t.string   "ACCNT_CD_DVLPR",             limit: 30,               null: false
    t.string   "ACCNT_CD_VNDR",              limit: 30,               null: false
    t.datetime "RGSTR_DT"
    t.integer  "RGSTR_USR",                  limit: 4,    default: 0, null: false, unsigned: true
    t.datetime "LST_UPD_DT"
    t.integer  "LST_UPD_USR",                limit: 4,    default: 0, null: false, unsigned: true
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
  end

  create_table "vndr_ms", primary_key: "ACCNT_CD", force: :cascade do |t|
    t.datetime "CNTRCT_START_DTE"
    t.datetime "CNTRCT_LST_UPD_DATE"
    t.datetime "CNTRCT_EXP_DATE"
    t.string   "SALES_REPORT_METHOD", limit: 100
    t.string   "MONTHLY_REPORT_TYPE", limit: 1
    t.string   "PAY_METHOD",          limit: 1
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
