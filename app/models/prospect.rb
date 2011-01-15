class Prospect < ActiveRecord::Base
  has_many :memberships
  has_many :mailgroups, :through => :memberships
end
