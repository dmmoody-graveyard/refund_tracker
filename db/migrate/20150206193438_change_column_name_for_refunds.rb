class ChangeColumnNameForRefunds < ActiveRecord::Migration
  def change
    rename_column :refunds, :provider_id, :physician_id
  end
end
