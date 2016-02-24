class CreateDstrbtrMs < ActiveRecord::Migration
  def change
    create_table :dstrbtr_ms do |t|

      t.timestamps null: false
    end
  end
end
