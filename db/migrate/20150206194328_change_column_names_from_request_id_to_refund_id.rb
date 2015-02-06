class ChangeColumnNamesFromRequestIdToRefundId < ActiveRecord::Migration
  def change
    rename_column :calls, :request_id, :refund_id
    rename_column :cancellations, :request_id, :refund_id
    rename_column :legals, :request_id, :refund_id
    rename_column :letters, :request_id, :refund_id
    rename_column :receivables, :request_id, :refund_id
  end
end