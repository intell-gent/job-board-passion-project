get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])

  if @user.save
    session[:id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @errors = @user.error.full_message
    erb :'users/new'
  end
end

get '/users/:id' do
  @user = User.find(params[:id])
  if @user && session[:id] == @user.id
    erb :'users/show'
  elsif @user && session[:id] != nil
    redirect "/users/#{session[:id]}"
  else
    @errors = ["Something went wrong ><"]
    erb :'sessions/new'
  end
end
