class CreateSerialMs < ActiveRecord::Migration
  def change
    create_table :serial_ms do |t|
      t.column :serial_id, :integer, unsigned: true, :null => false, :auto_increment => true
      t.column :sku, :string, :limit => 30, :null => false
      t.column :serial_type, :string, :limit => 1, :null => false
      t.column :cnsgnmnt_serial_st, :string, :limit => 1
      t.column :cnsgnmnt_serial_store_date, :date
      t.column :po_no, :string, :limit => 30, :null => false
      t.column :os_type, :string, :limit => 1
      t.column :serial_no_1, :string, :limit => 30, :null => false
      t.column :serial_no_2, :string, :limit => 30
      t.column :serial_no_3, :string, :limit => 30
      t.column :web_up_serial, :string, :limit => 2000
      t.column :dl_file_name, :string, :limit => 500
      t.column :dl_pass_cd, :string, :limit => 30
      t.column :nfr_f, :string, :limit => 1, :null => false
      t.column :nfr_rsn, :string, :limit => 2000
      t.column :accnt_cd_cstmr, :string, :limit => 30, :null => false
      t.column :so_no, :string, :limit => 30
      t.column :so_item_no, :integer, unsigned: true
      t.column :sku_serial_assngd, :string, :limit => 30
      t.column :use_type, :string, :limit => 1
      t.column :upgrd_serial_f, :string, :limit => 1, :null => false
      t.column :upgrd_pre_prd_serial_no, :integer, unsigned: true
      t.column :accnt_cd_sales_cntnt, :string, :limit => 30, :null => false
      t.column :dlvry_no, :string, :limit => 30, :null => false
      t.column :rgstr_dt, :datetime
      t.column :rgstr_usr, :integer, unsigned: true
      t.column :lst_upd_dt, :datetime
      t.column :lst_upd_usr, :integer, unsigned: true

      t.timestamps null: false
    end
  end
end
