class CreateCpnMTotalSalesDscnts < ActiveRecord::Migration
  def change
    create_table :cpn_m_total_sales_dscnts, id: false do |t|
      t.column :CPN_ID, :integer, unsigned: true, :default =>0, :null => false
      t.column :SALES_RANGE_NO, :integer, unsigned: true, :default =>0, :null => false
      t.column :SALES_RANGE_MIN_VALUE, :decimal,:precision =>20,:scale=>2, :null => false
      t.column :DSCNT_VALUE, :decimal,:precision =>20,:scale=>2
      t.column :DSCNT_RATE, :decimal,:precision =>5,:scale=>2
    end
    add_index :cpn_m_total_sales_dscnts, [ :CPN_ID, :SALES_RANGE_NO], unique:true
  end
end
