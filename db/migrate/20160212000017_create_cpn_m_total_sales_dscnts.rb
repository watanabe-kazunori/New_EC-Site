class CreateCpnMTotalSalesDscnts < ActiveRecord::Migration
  def change
    create_table :cpn_m_total_sales_dscnts do |t|
      t.column :cpn_id, :integer, unsigned: true, :default =>0, :null => false
      t.column :sales_range_no, :integer, unsigned: true, :default =>0, :null => false
      t.column :sales_range_min_value, :decimal,:precision =>20,:scale=>2, :null => false
      t.column :dscnt_value, :decimal,:precision =>20,:scale=>2
      t.column :dscnt_rate, :decimal,:precision =>5,:scale=>2
      t.column :cpn_m_id, :integer
    end
    add_index :cpn_m_total_sales_dscnts, [ :CPN_ID, :SALES_RANGE_NO], unique:true
  end
end
