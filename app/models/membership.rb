class Membership < ActiveRecord::Base
  belongs_to :mailgroup
  belongs_to :prospect
end
