class CreatePrdMHostApps < ActiveRecord::Migration
  def change
    create_table :prd_m_host_apps, id: false do |t|
      t.column :SKU, :string, :limit => 30, :null => false
      t.column :APP_CD, :string, :limit => 30, :null => false

      t.timestamps null: false
    end
    add_index :prd_m_host_apps, [ :SKU, :APP_CD], unique:true 
  end
end

