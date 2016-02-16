class CreateWhlSlPricePttrnDs < ActiveRecord::Migration
  def change
    create_table :whl_sl_price_pttrn_ds do |t|
      t.string :ptrn_cd
      t.string :sku
      t.string :whl_sl_price_type

      t.timestamps null: false
    end
  end
end
