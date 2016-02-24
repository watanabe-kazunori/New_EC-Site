class CreateVndrMDvrprDstrbtrs < ActiveRecord::Migration
  def change
    create_table :vndr_m_dvrpr_dstrbtrs do |t|
     	t.string :accnt_cd_dvlpr, limit: 30, null: false
		t.string :accnt_cd_dstrbtr, limit: 30, null: false
      	t.timestamps null: false
    end
  end
end
