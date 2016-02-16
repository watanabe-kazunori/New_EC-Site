class CreateVndrMs < ActiveRecord::Migration
  def change
    create_table :vndr_ms, id: false do |t|
      t.column :ACCNT_CD, :string, :limit => 30, :null => false
      t.column :CNTRCT_START_DTE, :datetime
      t.column :CNTRCT_LST_UPD_DATE, :datetime
      t.column :CNTRCT_EXP_DATE, :datetime
      t.column :SALES_REPORT_METHOD, :string, :limit => 100
      t.column :MONTHLY_REPORT_TYPE, :string, :limit => 1
      t.column :PAY_METHOD, :string, :limit => 1

      t.timestamps null: false
    end
    execute "ALTER TABLE vndr_ms ADD PRIMARY KEY (ACCNT_CD);"        
  end
end
