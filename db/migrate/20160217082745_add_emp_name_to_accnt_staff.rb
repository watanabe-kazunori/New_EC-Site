class AddEmpNameToAccntStaff < ActiveRecord::Migration
  def change
  	rename_column :accnt_staffs, :staff_name, :emp_name
  	rename_column :accnt_staffs, :staff_name_e, :emp_name_e
  end
end
