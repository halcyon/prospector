class CreateProspects < ActiveRecord::Migration
  def self.up
    create_table :prospects do |t|
      t.string :name
      t.string :email
      t.date :weddingDate
      t.string :referralType
      t.date :firstContact
      t.boolean :reserved
      t.string :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :prospects
  end
end
