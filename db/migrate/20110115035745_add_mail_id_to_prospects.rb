class AddMailIdToProspects < ActiveRecord::Migration
  def self.up
    add_column :prospects, :mail_id, :integer
  end

  def self.down
    remove_column :prospects, :mail_id
  end
end
