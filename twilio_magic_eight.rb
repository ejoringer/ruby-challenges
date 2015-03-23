require 'rubygems'
require 'twilio-ruby'

account_sid = "ACc2587d612f2aeddfd547ff80b194d4f4"
auth_token = "5281437bfa3642a0ba09c7094b60f8f0"

@client = Twilio::REST::Client.new 'ACc2587d612f2aeddfd547ff80b194d4f4', '5281437bfa3642a0ba09c7094b60f8f0'

puts "Ask me a yes or no question:"
question = gets

all_responses = ['Absolutely', 'Most likely', 'As I see it, yes', 'Today yes, tomorrow maybe not', 'Cannot predict right now', 
    'Better not tell you now', 'Very doubtful', 'My sources say no', 'My reply is no', 'Who cares?']

message = @client.account.messages.create(
  :from => "+14065519678",
  :to => "+14065802747",
  :body => all_responses.sample
  )
 
if (question.to_i > 0) then
  puts message.to
end
