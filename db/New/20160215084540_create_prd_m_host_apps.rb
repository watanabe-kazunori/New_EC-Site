class CreatePrdMHostApps < ActiveRecord::Migration
  def change
    create_table :prd_m_host_apps do |t|
      t.string :SKU
      t.string :APP_CD

      t.timestamps null: false
    end
  end
end
