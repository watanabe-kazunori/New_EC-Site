class CpnM < ActiveRecord::Base
 # include DatetimeIntegratable
  has_many :cpn_m_sales_cntcts, dependent: :destroy
  has_many :cpn_m_total_sales_dscnts, dependent: :destroy
  accepts_nested_attributes_for :cpn_m_sales_cntcts
  accepts_nested_attributes_for :cpn_m_total_sales_dscnts

  validates :cpn_cd, :presence => true
  validates :cpn_title, :presence => true
  validates :cpn_discnt_type, :presence => true
  validates :vndr_cpn, :presence => true
  validates :use_limit, :presence => true
  validates :start_dt, presence: true

  REGISTRABLE_ATTRIBUTES = %i(
    name
    arrival_date
    published_at_date published_at_hour published_at_minute
  )

  # DatetimeIntegratableで宣言した、 integrate_datetime_fields関数を利用
  # 下記のように宣言することで、モデル初期化時にpublished_atを
  # published_at_date, published_at_hour, published_at_minute に分解する
  #
  # モデル保存時に、date/hour/minute の3つの変数の値を
  # published_at に戻す
#  integrate_datetime_fields :published_at

  validates :published_at_date, presence: true
  validates :published_at_hour, presence: true
  validates :published_at_minute, presence: true


  private
  def cpn_m_params
      params.require(:cpn_m).permit(:cpn_id, :cpn_cd, :cpn_st, :cpn_title, :cpn_cls, :cpn_discnt_type, :vndr_cpn, :use_limit, :start_dt, :expiration_dt, :dscnt_value, :dscnt_rate, :trgt_prd_cndtn, :excld_prd_cndtn, :memo)
  end

end
