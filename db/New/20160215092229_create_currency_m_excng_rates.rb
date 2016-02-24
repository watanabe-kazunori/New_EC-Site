class CreateCurrencyMExcngRates < ActiveRecord::Migration
  def change
    create_table :currency_m_excng_rates do |t|
      t.string :currency_cd
      t.string :exchng_rate_ver
      t.integer :exchng_rate
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
