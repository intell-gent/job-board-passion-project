post '/mailgun/send' do
  MailgunAdapter.new.send_email(params[:email])
  erb :"/mailgun/success"
end
