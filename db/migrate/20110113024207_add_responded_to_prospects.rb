class AddRespondedToProspects < ActiveRecord::Migration
  def self.up
    add_column :prospects, :responded, :boolean
  end

  def self.down
    remove_column :prospects, :responded
  end
end
