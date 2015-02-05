class CreateProviderTables < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.string :tin
    end

    create_table :physicians do |t|
      t.string :name
      t.string :sub_tin
      t.string :telephone
      t.integer :provider_id
    end
  end
end
