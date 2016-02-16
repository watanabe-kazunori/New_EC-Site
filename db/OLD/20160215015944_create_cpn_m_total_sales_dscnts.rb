class CreateCpnMTotalSalesDscnts < ActiveRecord::Migration
  def change
    create_table :cpn_m_total_sales_dscnts do |t|
      t.integer :cpn_id
      t.integer :sales_range_no
      t.integer :sales_range_min_value
      t.integer :dscnt_value
      t.integer :dscnt_rate

      t.timestamps null: false
    end
  end
end
