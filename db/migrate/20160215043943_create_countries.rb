class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :country_cd, limit: 4
      t.string :country_name, limit: 50
      t.string :country_name_e, limit: 50
      t.string :currency_cd, limit: 4
      t.timestamps null: false
    end
  end
end
