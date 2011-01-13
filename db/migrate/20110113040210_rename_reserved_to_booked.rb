class RenameReservedToBooked < ActiveRecord::Migration
  def self.up
    rename_column :prospects, :reserved, :booked
  end

  def self.down
    rename_column :prospects, :booked, :reserved
  end
end
