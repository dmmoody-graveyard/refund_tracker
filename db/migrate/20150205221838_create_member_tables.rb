class CreateMemberTables < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :name
      t.string :number
    end

    create_table :certs do |t|
      t.string :firstname
      t.string :lastname
      t.string :member_id
      t.integer :case_id
    end

    create_table :claimants do |t|
      t.string :firstname
      t.string :lastname
      t.string :telephone
      t.integer :cert_id
    end
  end
end
