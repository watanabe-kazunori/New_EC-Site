class CreatePrdMDstrbtrHidePrds < ActiveRecord::Migration
  def change
    create_table :prd_m_dstrbtr_hide_prds do |t|
      t.string :sku
      t.string :accnt_cd

      t.timestamps null: false
    end
  end
end
