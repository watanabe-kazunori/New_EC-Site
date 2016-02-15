class Accnt < ActiveRecord::Base
	self.primary_keys = :accnt_cd, :accnt_type_1, :accnt_type_2, :com_ind
end
