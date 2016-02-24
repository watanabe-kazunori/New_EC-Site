class CpnMTotalSalesDscnt < ActiveRecord::Base

  belongs_to :cpn_ms, foreign_key: "cpn_id"
  
end
