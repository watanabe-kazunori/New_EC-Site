class CreateCpnMs < ActiveRecord::Migration
  def change
    create_table :cpn_ms, id: false do |t|
      t.column :CPN_ID, :integer, unsigned: true, :default =>0, :null => false
      t.column :CPN_CD, :string, :limit => 30, :null => false
      t.column :CPN_ST, :string, :limit => 1, :null => false
      t.column :CPN_TITLE, :string, :limit => 2000, :null => false
      t.column :CPN_CLS, :string, :limit => 1, :null => false
      t.column :CPN_DISCNT_TYPE, :string, :limit => 1, :null => false
      t.column :VNDR_CPN, :string, :limit => 1, :null => false
      t.column :USE_LIMIT, :integer, unsigned: true, :default =>0, :null => false
      t.column :START_DT, :datetime, :null => false
      t.column :EXPIRATION_DT, :datetime
      t.column :DSCNT_VALUE, :decimal,:precision =>20,:scale=>2
      t.column :DSCNT_RATE, :decimal,:precision =>5,:scale=>2
      t.column :TRGT_PRD_CNDTN, :string, :limit => 2000
      t.column :EXCLD_PRD_CNDTN, :string, :limit => 2000

    end
    execute "ALTER TABLE cpn_ms ADD PRIMARY KEY (CPN_ID);"
  end
end
