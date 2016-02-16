class CreateCommRateMs < ActiveRecord::Migration
  def change
    create_table :comm_rate_ms do |t|
      t.string :comm_rate_ver
      t.integer :comm_rate
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
