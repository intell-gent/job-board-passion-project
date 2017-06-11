# create new Job
get '/jobs/:id/new' do
  @board = Board.find(params[:id])
  erb :'jobs/new'

end
post '/jobs' do

  @job = Job.new(params[:job])

  if @job.save
    redirect "/boards/#{@board.id}"
  else
    erb :'jobs/new'
  end

end

# view a job posting
get '/jobs/:id' do

  @job = Job.find(params[:id])

  erb :'jobs/show'

end
