get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])

  if @user.save
    redirect "/users/#{@user.id}"
  else
    @errors = @user.error.full_message
    erb :'users/new'
  end
end

get '/users/:id' do
  @user = User.find_by(params[:username])
  if @user #&& session[:id] == @user.id
    erb :'users/show'
  else
    @errors = ["Something went wrong ><"]
    erb :'sessions/new'
  end
end
