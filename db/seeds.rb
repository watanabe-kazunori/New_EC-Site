# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "csv"

CSV.foreach('db/country_m.csv') do |row|
  Country.create(:country_cd => row[2], :country_name => row[0], :country_name_e => row[1])
end

CSV.foreach('db/prefecture_no.csv') do |row|
  Prefecture.create(:prefecture_no => row[0], :prefecture_name => row[1])
end