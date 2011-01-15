# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Prospect.create(:name => "John Smith", :email => "johnqsmith@yahoo.com", :weddingDate => "2011-12-15", :referral => "Bob")
Mailgroup.create(:name => "reminder")
Membership.create(:prospect_id => 1, :mailgroup_id => 1)
