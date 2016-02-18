class CreatePrdMEffectCsls < ActiveRecord::Migration
  def change
    create_table :prd_m_effect_csls, id: false do |t|
      t.column :SKU, :string, :limit => 30, :null => false
      t.column :PRD_EFFECT_CLS_CD, :string, :limit => 30, :null => false

      t.timestamps null: false
    end
    add_index :prd_m_effect_csls, [ :SKU, :PRD_EFFECT_CLS_CD], unique:true    
  end
end
