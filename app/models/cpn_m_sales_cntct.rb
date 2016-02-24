class CpnMSalesCntct < ActiveRecord::Base

  belongs_to :cpn_ms , foreign_key: "cpn_id"

 
  validates :cpn_id, :presence => true
  validates :accnt_cd_sales_cntct, :presence => true


end
