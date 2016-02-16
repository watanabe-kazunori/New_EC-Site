class CreateFbjPrdSellPriceMs < ActiveRecord::Migration
  def change
    create_table :fbj_prd_sell_price_ms do |t|
      t.string :sku
      t.string :sell_price_ver
      t.integer :tax_ex_price
      t.integer :tax_in_price
      t.integer :pre_cp_sell_price
      t.integer :cp_dscnt_rate
      t.date :applctn_start_dt
      t.date :applctn_end_dt
      t.string :currency_cd
      t.integer :exchng_rate_ver
      t.string :comm_rate_ver
      t.string :tax_ver
      t.datetime :rgstr_dtrgstr_dt
      t.integer :rgstr_usr
      t.datetime :lst_updt_dt
      t.integer :lst_updt_usr

      t.timestamps null: false
    end
  end
end
