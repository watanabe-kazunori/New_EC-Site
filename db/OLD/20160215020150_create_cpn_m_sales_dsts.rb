class CreateCpnMSalesDsts < ActiveRecord::Migration
  def change
    create_table :cpn_m_sales_dsts do |t|
      t.integer :cpn_id
      t.string :accnt_cd

      t.timestamps null: false
    end
  end
end
