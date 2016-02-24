class CreatePrdHostAppMs < ActiveRecord::Migration
  def change
    create_table :prd_host_app_ms, id: false do |t|
      t.column :APP_CD, :string, :limit => 30, :null => false
      t.column :APP_NAME, :string, :limit => 50, :null => false
      t.column :APP_VER, :string, :limit => 50

      t.timestamps null: false
    end
    execute "ALTER TABLE prd_host_app_ms ADD PRIMARY KEY (APP_CD);"    
  end
end
