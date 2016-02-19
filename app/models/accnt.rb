class Accnt < ActiveRecord::Base
	has_one :country, :foreign_key => "country_cd"
	has_one :prefecture, :foreign_key => "prefecture_no"
end
