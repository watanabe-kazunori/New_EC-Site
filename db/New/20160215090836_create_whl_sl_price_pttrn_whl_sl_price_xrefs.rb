class CreateWhlSlPricePttrnWhlSlPriceXrefs < ActiveRecord::Migration
  def change
    create_table :whl_sl_price_pttrn_whl_sl_price_xrefs do |t|
      t.string :ptrn_cd
      t.string :sku
      t.string :whl_sl_price_type
      t.string :whl_sl_price_ver
      t.string :string

      t.timestamps null: false
    end
  end
end
