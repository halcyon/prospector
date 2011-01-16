namespace :prospector do
  desc "mail"
  task :mail => :environment do
    Reminder.welcome_email(Prospect.first).deliver
#    Prospect.all.each do |prospect|
#      puts prospect.name
#    end
  end
end
