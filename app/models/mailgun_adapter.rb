class MailgunAdapter
  def initialize
     @api_key = ENV["ACTIVE_API_KEY"]
     @email_domain = ENV["EMAIL_DOMAIN"]
  end

  def send_email(message_params)
    start_mailgun
    @mg_client.send_message @email_domain, message_params
  end

  private
  def start_mailgun
    @mg_client = Mailgun::Client.new @api_key
  end
end

# message_params
# from: 'eamil@domain.com',
# to:   'emai@domain.com',
# subject: 'The Ruby SDK is awesome!',
# text:    'It is really easy to send a message!'
