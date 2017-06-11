# index .
get "/" do
   @boards = Board.all
  erb :"index"
end
get "/boards" do
   @boards = Board.all
  erb :"index"
end
# create
get '/boards/new' do

  erb :'boards/new'

end

post '/boards' do

  @board = Board.new(params[:board])

  if @board.save
    redirect '/boards'
  else
    erb :'boards/new'
  end

end
# show
get '/boards/:id' do

  @board = Board.find(params[:id])

  erb :'boards/show'

end
# index page for viewing all boards with a subscribe board
# new for making board
# show for individual board and it's jobs
