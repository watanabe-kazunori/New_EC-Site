class CreatePrdCtgryMs < ActiveRecord::Migration
  def change
    create_table :prd_ctgry_ms, id: false do |t|
      t.column :PRD_CTGRY_CD, :string, :limit => 30
      t.column :PRD_CTGRY_NAME, :string, :limit => 50

      t.timestamps null: false
    end
    execute "ALTER TABLE prd_ctgry_ms ADD PRIMARY KEY (PRD_CTGRY_CD);"
  end
end
