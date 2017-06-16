post '/subscriptions/:board_id' do
  if logged_in?
    @board = Board.find(params[:board_id])
    @user = User.find_by(id: session[:id])
    # if current_user?(@board.hosting)
    #   redirect :"boards/#{@board.id}"
    # else

    # Put subscription logic back here after testing

    # end
      Subscription.create({board_id: params[:board_id], user_id: @user.id})
      redirect :"boards/#{@board.id}"
  else
    redirect :'sessions/new'
  end
end
delete '/subscriptions/:board_id' do
  if logged_in?
    @board = Board.find(params[:board_id])
    @user = User.find_by(id: session[:id])
    # if current_user?(@board.hosting)
    #   redirect :"boards/#{@board.id}"
    # else

    # Put subscription logic back here after testing

    # end
      Subscription.find_by({board_id: params[:board_id], user_id: @user.id}).destroy!
      redirect :"boards/#{@board.id}"
  else
    redirect :'sessions/new'
  end
end
