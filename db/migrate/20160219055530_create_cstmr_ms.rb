class CreateCstmrMs < ActiveRecord::Migration
  def change
    create_table :cstmr_ms do |t|

      t.timestamps null: false
    end
  end
end
