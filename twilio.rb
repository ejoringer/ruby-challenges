require 'rubygems'
require 'twilio-ruby'

account_sid = "ACc2587d612f2aeddfd547ff80b194d4f4"
auth_token = "5281437bfa3642a0ba09c7094b60f8f0"

@client = Twilio::REST::Client.new 'ACc2587d612f2aeddfd547ff80b194d4f4', '5281437bfa3642a0ba09c7094b60f8f0'

message = @client.account.messages.create(
  :from => "+14065519678",
  :to => "+14065802747",
  :body => "Heyyyyyyyoo"
  )
  
  puts message.to