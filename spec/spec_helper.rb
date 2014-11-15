# encoding: UTF-8

require 'linkedin-client'

# Load credentials from ENV if possible, or load from _creds.rb
if ENV['TEST_USER_TOKEN'] && ENV['TEST_USER_ID'] && ENV['TEST_USER_URL']
  TEST_USER_TOKEN = ENV['TEST_USER_TOKEN']
else
  begin
    require '_creds'
  rescue LoadError
    puts "Using _creds.stub.rb, create a _creds.rb with actual credentials for a live test."
  end
end
