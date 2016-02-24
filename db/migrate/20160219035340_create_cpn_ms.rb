class CreateCpnMs < ActiveRecord::Migration
  def change
    create_table :cpn_ms do |t|
      t.column :cpn_id, :integer, unsigned: true, :null => false, :auto_increment => true
      t.column :cpn_cd, :string, :limit => 30, :null => false
      t.column :cpn_st, :string, :limit => 1, :null => false
      t.column :cpn_title, :string, :limit => 2000, :null => false
      t.column :cpn_cls, :string, :limit => 1, :null => false
      t.column :cpn_discnt_type, :string, :limit => 1, :null => false
      t.column :vndr_cpn, :string, :limit => 1, :null => false
      t.column :use_limit, :integer, unsigned: true, :default =>0, :null => false
      t.column :start_dt, :datetime, :null => false
      t.column :expiration_dt, :datetime
      t.column :dscnt_value, :decimal,:precision =>20,:scale=>2
      t.column :dscnt_rate, :decimal,:precision =>5,:scale=>2
      t.column :trgt_prd_cndtn, :string, :limit => 2000
      t.column :excld_prd_cndtn, :string, :limit => 2000
      t.column :memo, :string, :limit => 2000
      t.column :cpn_m_id, :integer
    end
  end
end
