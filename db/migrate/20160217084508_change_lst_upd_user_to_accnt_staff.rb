class ChangeLstUpdUserToAccntStaff < ActiveRecord::Migration
  def change
  	  	rename_column :accnt_staffs, :lst_upd_user, :lst_upd_usr
  end
end
