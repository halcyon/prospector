class Mailgroup < ActiveRecord::Base
  has_many :memberships
  has_many :prospects, :through => :memberships
end
