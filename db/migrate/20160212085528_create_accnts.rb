class CreateAccnts < ActiveRecord::Migration
  def change
    create_table :accnts do |t|

      t.timestamps null: false
    end
  end
end
