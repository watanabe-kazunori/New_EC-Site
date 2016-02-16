class CreatePrdMs < ActiveRecord::Migration
  def change
    create_table :prd_ms, id: false do |t|
      t.column :SKU, :string, :limit => 30, :null => false
      t.column :SKU_DVLPR, :string, :limit => 30
      t.column :SKU_SOURCE_PRD, :string, :limit => 30
      t.column :PRD_NAME, :string, :limit => 50
      t.column :PRD_NAME_SUBTITLE, :string, :limit => 50
      t.column :PRD_DVLPR_ORG_NAME, :string, :limit => 50
      t.column :PRD_CTGRY_CD, :string, :limit => 30, :null => false
      t.column :PRD_TYPE, :string, :limit => 1
      t.column :SP_PRD_TYPE, :string, :limit => 1
      t.column :SET_PRD_F, :string, :limit => 1
      t.column :SET_PRD_TYPE, :string, :limit => 1
      t.column :SALE_F, :string, :limit => 1
      t.column :RCVNG_PLCNT_PRD_F, :string, :limit => 1
      t.column :DLVRY_LD_TIME, :string, :limit => 100
      t.column :DB_PRD_DLVRY_MTHD, :string, :limit => 2000
      t.column :LIC_TYPE, :string, :limit => 1
      t.column :LIC_FROM, :integer, unsigned: true, :default =>0, :null => false
      t.column :LIC_TO, :integer, unsigned: true, :default =>0, :null => false
      t.column :DSTRBTR_DISP_F, :string, :limit => 1
      t.column :PRD_ST, :string, :limit => 1
      t.column :ACDMC_LIC_F, :string, :limit => 1
      t.column :PRD_DLVRY_MTHD, :string, :limit => 2000
      t.column :PRD_DESC, :string, :limit => 2000
      t.column :PRD_NOTE, :string, :limit => 2000
      t.column :PRD_NOTICE, :string, :limit => 2000
      t.column :PRD_OTHER_INFO, :string, :limit => 2000
      t.column :URL_PRD, :string, :limit => 500
      t.column :URL_INSTALL_GUID, :string, :limit => 500
      t.column :URL_LIC_AUTH_GUID, :string, :limit => 500
      t.column :URL_INSTALLER, :string, :limit => 500
      t.column :URL_PRD_IMAGE, :string, :limit => 500
      t.column :URL_DL, :string, :limit => 500
      t.column :MEMO, :string, :limit => 2000
      t.column :SUBSCRIPTION_LIC_TERM, :integer, unsigned: true, :default =>0, :null => false
      t.column :SUBSCRIPTION_LIC_TERM_UNIT, :string, :limit => 1
      t.column :MNT_LIC_TERM, :integer, unsigned: true, :default =>0, :null => false
      t.column :MNT_LIC_TERM_UNIT, :string, :limit => 1
      t.column :ACCNT_CD_DVLPR, :string, :limit => 30, :null => false
      t.column :ACCNT_CD_VNDR, :string, :limit => 30, :null => false
      t.column :RGSTR_DT, :datetime
      t.column :RGSTR_USR, :integer, unsigned: true, :default =>0, :null => false
      t.column :LST_UPD_DT, :datetime
      t.column :LST_UPD_USR, :integer, unsigned: true, :default =>0, :null => false

      t.timestamps null: false
    end
    execute "ALTER TABLE prd_ms ADD PRIMARY KEY (SKU);"    
  end
end
