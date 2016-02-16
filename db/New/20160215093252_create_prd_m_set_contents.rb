class CreatePrdMSetContents < ActiveRecord::Migration
  def change
    create_table :prd_m_set_contents do |t|
      t.string :sku
      t.string :sku_content

      t.timestamps null: false
    end
  end
end
