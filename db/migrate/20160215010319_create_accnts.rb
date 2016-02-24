class CreateAccnts < ActiveRecord::Migration
  def change
    create_table :accnts do |t|
    	t.string :accnt_cd, limit: 30, null: false
		t.string :accnt_type_1, limit: 1, null: false
		t.string :accnt_type_2, limit: 1
		t.string :com_ind, limit: 1
		t.string :accnt_name, limit: 50
		t.string :accnt_name_e, limit: 50
		t.string :country_cd, limit: 4
		t.string :zip, limit: 10
		t.string :prefecture_no, limit: 2
		t.string :city, limit: 20
		t.string :area, limit: 20
		t.string :bld, limit: 50
		t.string :print_address, limit: 100
		t.string :print_address_e, limit: 100
		t.string :tel, limit: 20
		t.string :email, limit: 50
		t.string :fax, limit: 20
		t.string :memo, limit: 2000
		t.string :rgstr_usr, limit: 16
		t.string :lst_upd_usr, limit: 16
      	t.timestamps null: false
    end
  end
end
