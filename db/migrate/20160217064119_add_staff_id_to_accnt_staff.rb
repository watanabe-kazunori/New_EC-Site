class AddStaffIdToAccntStaff < ActiveRecord::Migration
  def change
    add_column :accnt_staffs, :staff_id, :integer
  end

end
