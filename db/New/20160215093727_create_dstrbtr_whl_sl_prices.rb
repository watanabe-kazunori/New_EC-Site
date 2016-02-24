class CreateDstrbtrWhlSlPrices < ActiveRecord::Migration
  def change
    create_table :dstrbtr_whl_sl_prices do |t|
      t.string :accnt_cd
      t.string :sku
      t.string :whl_sl_price_ver
      t.integer :whl_price_rate
      t.integer :whl_sl_price
      t.integer :pre_cp_whl_sl_prie_rate
      t.integer :pre_cp_whl_sl_price
      t.integer :cp_price_dscnt_rate
      t.integer :cp_price_dscnt
      t.date :start_date
      t.date :end_date
      t.datetime :rgstr_dt
      t.integer :rgstr_usr
      t.datetime :lst_upd_dt
      t.integer :lst_upd_usr

      t.timestamps null: false
    end
  end
end
