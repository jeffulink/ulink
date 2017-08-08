class ChangeQuotaionnameToQname < ActiveRecord::Migration[5.0]
  def change
      rename_column :quotations, :quotaionname, :qname
  end
end
