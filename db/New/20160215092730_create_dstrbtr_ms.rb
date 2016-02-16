class CreateDstrbtrMs < ActiveRecord::Migration
  def change
    create_table :dstrbtr_ms do |t|
      t.string :accnt_cd
      t.datetime :cntrct_start_date
      t.datetime :cntrct_start_date
      t.datetime :cntrct_renewal_date
      t.datetime :cntrct_next_renewal_date
      t.datetime :cntrct_end_date
      t.datetime :rgstr_date
      t.string :ptrn_cd

      t.timestamps null: false
    end
  end
end
