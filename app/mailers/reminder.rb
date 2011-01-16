class Reminder < ActionMailer::Base
  default :from => "from@example.com"

  def welcome_email(prospect)
    @prospect = prospect
    @url = "http://theweddingvideographer.org"
    mail(:to => prospect.email,
         :subject => "Welcome to My Awesome Site")
  end
end
