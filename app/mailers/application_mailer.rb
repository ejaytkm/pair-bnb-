class ApplicationMailer < ActionMailer::Base
  Clearance.configure do |config|
  config.mailer_sender = "pair_bnb@egoogle.com"
end
end
