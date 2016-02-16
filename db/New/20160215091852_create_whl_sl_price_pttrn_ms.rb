class CreateWhlSlPricePttrnMs < ActiveRecord::Migration
  def change
    create_table :whl_sl_price_pttrn_ms do |t|
      t.string :ptrn_cd
      t.string :pttrn_name
      t.string :pttrn_desc

      t.timestamps null: false
    end
  end
end
