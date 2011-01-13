class RenameReferraltypeToReferral < ActiveRecord::Migration
  def self.up
    rename_column :prospects, :referralType, :referral
  end

  def self.down
    rename_column :prospects, :referral, :referralType
  end
end
