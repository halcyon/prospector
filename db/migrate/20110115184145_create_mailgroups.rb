class CreateMailgroups < ActiveRecord::Migration
  def self.up
    create_table :mailgroups do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :mailgroups
  end
end
