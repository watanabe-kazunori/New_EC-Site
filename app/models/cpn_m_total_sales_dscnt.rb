class CpnMTotalSalesDscnt < ActiveRecord::Base

  belongs_to :cpn_ms, foreign_key: "cpn_id"

 
  validates :cpn_id, :presence => true
  validates :sales_range_no, :presence => true
  validates :sales_range_min, :presence => true



end
