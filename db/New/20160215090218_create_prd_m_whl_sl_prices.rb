class CreatePrdMWhlSlPrices < ActiveRecord::Migration
  def change
    create_table :prd_m_whl_sl_prices do |t|
      t.string :SKU
      t.string :WHL_SL_PRICE_TYPE
      t.string :WHL_SL_PRICE_VER
      t.integer :WHL_SL_PRICE_RATE
      t.integer :WHL_SL_PRICE
      t.integer :PRE_CP_WHL_SL_PRIE_RATE
      t.integer :PRE_CP_WHL_SL_PRICE
      t.integer :CP_PRICE_DSCNT_RATE
      t.integer :CP_PRICE_DSCNT
      t.date :START_DATE
      t.date :END_DATE
      t.datetime :RGSTR_DT
      t.integer :RGSTR_USR
      t.datetime :LST_UPD_DT
      t.integer :LST_UPD_USR

      t.timestamps null: false
    end
  end
end
