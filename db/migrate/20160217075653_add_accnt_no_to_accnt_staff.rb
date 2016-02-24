class AddAccntNoToAccntStaff < ActiveRecord::Migration
  def change
  	add_column :accnt_staffs, :accnt_cd, :string, limit: 50
  	remove_column :accnt_staffs, :accnt_no
  end
end
