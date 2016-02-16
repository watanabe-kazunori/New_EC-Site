class CreatePrdHostAppMs < ActiveRecord::Migration
  def change
    create_table :prd_host_app_ms do |t|
      t.string :APP_CD
      t.string :APP_NAME
      t.string :APP_VER

      t.timestamps null: false
    end
  end
end
