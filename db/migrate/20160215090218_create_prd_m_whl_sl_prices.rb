class CreatePrdMWhlSlPrices < ActiveRecord::Migration
  def change
    create_table :prd_m_whl_sl_prices, id: false do |t|
      t.column :SKU, :string, :limit => 30, :null => false
      t.column :WHL_SL_PRICE_TYPE, :string, :limit => 1, :null => false
      t.column :WHL_SL_PRICE_VER, :string, :limit => 30, :null => false
      t.column :WHL_SL_PRICE_RATE, :decimal,:precision =>5,:scale=>2, :null => false
      t.column :WHL_SL_PRICE, :decimal,:precision =>20,:scale=>2, :null => false
      t.column :PRE_CP_WHL_SL_PRIE_RATE, :decimal,:precision =>5,:scale=>2
      t.column :PRE_CP_WHL_SL_PRICE, :decimal,:precision =>20,:scale=>2
      t.column :CP_PRICE_DSCNT_RATE, :decimal,:precision =>5,:scale=>2
      t.column :CP_PRICE_DSCNT, :decimal,:precision =>20,:scale=>2
      t.column :START_DATE, :datetime, :null => false
      t.column :END_DATE, :date
      t.column :RGSTR_DT, :datetime
      t.column :RGSTR_USR, :integer, unsigned: true, :default =>0
      t.column :LST_UPD_DT, :datetime
      t.column :LST_UPD_USR, :integer, unsigned: true, :default =>0

      t.timestamps null: false
    end

  end
end

