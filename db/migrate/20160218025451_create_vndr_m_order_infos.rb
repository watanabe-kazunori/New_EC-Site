class CreateVndrMOrderInfos < ActiveRecord::Migration
  def change
    create_table :vndr_m_order_infos do |t|
     	t.string :accnt_cd, limit: 30, null: false
		  t.string :info_no, limit: 30, null: false
		  t.string :content, limit: 30
		  t.string :disp_odrer, limit: 30
		  t.string :rgstr_usr, limit: 16
		  t.string :lst_upd_usr, limit: 16
    	t.timestamps null: false
    end
  end
end
