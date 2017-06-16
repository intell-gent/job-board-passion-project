
get '/sessions/new' do

  erb :'sessions/new'

end

post '/sessions' do
  @user = User.find_by(username: params[:username])
  if @user && @user.password == params[:password]
    login(@user)
    redirect "/users/#{@user.id}"
  else
    erb :'/sessions/new'
  end
end

delete '/sessions' do
  session[:id] = nil

  redirect '/sessions/new'

end
