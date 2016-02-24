class CreateAccntStaffs < ActiveRecord::Migration
  def change
    create_table :accnt_staffs do |t|
      t.string :accnt_no, limit: 30
      t.string :dept_name, limit: 50
      t.string :dept_name_e, limit: 50
      t.string :staff_name, limit: 50
      t.string :staff_name_e, limit: 50
      t.string :country_cd, limit: 4
      t.string :zip, limit: 10
      t.string :prefecture_no, limit: 2
      t.string :city, limit: 20
      t.string :area, limit: 20
      t.string :bld, limit:50
      t.string :print_address, limit: 100
      t.string :print_address_e, limit: 100
      t.string :tel, limit: 20
      t.string :email, limit: 50
      t.string :fax, limit: 20
      t.string :accnt_cd_billing, limit: 30
      t.integer :staff_id_billing, limit: 4
      t.integer :regstr_usr, limit: 4
      t.integer :lst_upd_user, limit: 4
      t.timestamps null: false
    end
  end
end
