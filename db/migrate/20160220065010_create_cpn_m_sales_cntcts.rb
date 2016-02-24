class CreateCpnMSalesCntcts < ActiveRecord::Migration
  def change
    create_table :cpn_m_sales_cntcts do |t|
      t.column :cpn_id, :integer, unsigned: true, :null => false, :auto_increment => true
      t.column :accnt_cd_sales_cntct, :string, :limit => 30, :null => false
      t.column :cpn_m_id, :integer
      t.timestamps null: false
    end
  end
end
