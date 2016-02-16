class CreateCpnMSalesDsts < ActiveRecord::Migration
  def change
    create_table :cpn_m_sales_dsts, id: false do |t|
      t.column :CPN_ID, :integer, unsigned: true, :default =>0, :null => false
      t.column :ACCNT_CD, :string, :limit => 30, :null => false
    end
    execute "ALTER TABLE cpn_m_sales_dsts ADD PRIMARY KEY (CPN_ID);"
  end
end
