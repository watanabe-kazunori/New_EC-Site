class ChangeRegstUsrToAccntStaff < ActiveRecord::Migration
  def change
  	  	rename_column :accnt_staffs, :regstr_usr, :rgstr_usr
  end
end
