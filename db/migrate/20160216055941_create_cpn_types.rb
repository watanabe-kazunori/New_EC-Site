class CreateCpnTypes < ActiveRecord::Migration
  def change
    create_table :cpn_types do |t|
      t.string :type_id
      t.string :name

      t.timestamps null: false
    end
  end
end
