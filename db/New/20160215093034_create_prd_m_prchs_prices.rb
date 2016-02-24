class CreatePrdMPrchsPrices < ActiveRecord::Migration
  def change
    create_table :prd_m_prchs_prices do |t|
      t.string :sku
      t.string :prchs_price_ver
      t.integer :list_price
      t.integer :prchs_price_rate
      t.integer :prchs_price
      t.date :start_date
      t.date :end_date
      t.string :currency_cd
      t.datetime :rgstr_dt
      t.integer :rgstr_usr
      t.datetime :lst_upd_dt
      t.integer :lst_upda_usr

      t.timestamps null: false
    end
  end
end
