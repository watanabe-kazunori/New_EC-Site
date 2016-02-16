class CreatePrdEffectClsMs < ActiveRecord::Migration
  def change
    create_table :prd_effect_cls_ms, id: false do |t|
      t.column :PRD_EFFECT_CLS_CD, :string, :limit => 30, :null => false
      t.column :PRD_EFFECT_CLS_NAME, :string, :limit => 50, :null => false

      t.timestamps null: false
    end
    execute "ALTER TABLE prd_effect_cls_ms ADD PRIMARY KEY (PRD_EFFECT_CLS_CD);"
  end
end
