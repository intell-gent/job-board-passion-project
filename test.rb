require 'mailgun'

# First, instantiate the Mailgun Client with your API key
mg_client = Mailgun::Client.new ENV["ACTIVE_API_KEY"]

# Define your message parameters
message_params =  { from: 'eamil@domain.com',
                    to:   'emai@domain.com',
                    subject: 'The Ruby SDK is awesome!',
                    text:    'It is really easy to send a message!'
                  }

# Send your message through the client
mg_client.send_message ENV["EMAIL_DOMAIN"], message_params
