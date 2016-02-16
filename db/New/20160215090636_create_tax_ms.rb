class CreateTaxMs < ActiveRecord::Migration
  def change
    create_table :tax_ms do |t|
      t.string :tax_ver
      t.integer :tax_rate
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
