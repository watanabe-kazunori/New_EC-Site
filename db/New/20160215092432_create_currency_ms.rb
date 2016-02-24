class CreateCurrencyMs < ActiveRecord::Migration
  def change
    create_table :currency_ms do |t|
      t.string :currency_cd
      t.string :currency_sign
      t.string :currency_name
      t.string :currency_name_e
      t.string :currency_unit
      t.string :currency_unit_e

      t.timestamps null: false
    end
  end
end
