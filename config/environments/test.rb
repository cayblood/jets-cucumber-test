require 'fileutils'

Jets.application.configure do
  # Tell Action Mailer not to deliver emails to the real world.
  # The :test delivery method accumulates sent emails in the
  # ActionMailer::Base.deliveries array.
  # Docs: http://rubyonjets.com/docs/email-sending/
  config.action_mailer.delivery_method = :test
  FileUtils.mkdir_p 'log'
  config.logger = Logger.new('log/test.log')
end
