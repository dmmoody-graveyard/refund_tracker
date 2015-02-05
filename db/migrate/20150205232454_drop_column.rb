class DropColumn < ActiveRecord::Migration
  def change
    remove_column :receivables, :money
    remove_column :refunds, :money
  end
end
