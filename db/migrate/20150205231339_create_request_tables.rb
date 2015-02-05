class CreateRequestTables < ActiveRecord::Migration
  def change
    create_table :responsibles do |t|
      t.string :request_to
    end

    create_table :reasons do |t|
      t.string :reason_type
    end

    create_table :cancellations do |t|
      t.date :date
      t.text :reason
      t.integer :request_id
    end

    create_table :letters do |t|
      t.date :date
      t.integer :request_id
    end

    create_table :receivables do |t|
      t.date :received
      t.decimal :amount, :money
      t.date :posted
      t.integer :request_id
    end

    create_table :legals do |t|
      t.date :date
      t.integer :request_id
    end

    create_table :calls do |t|
      t.date :date
      t.text :note
      t.integer :request_id
    end

    create_table :refunds do |t|
      t.date :date
      t.integer :responsible_id
      t.integer :claimant_id
      t.integer :provider_id
      t.decimal :amount, :money
      t.integer :reason_id
    end
  end
end
