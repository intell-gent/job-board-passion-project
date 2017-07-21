get "/categories" do
   @categories = Category.all
  erb :"categories/index"
end
get "/categories/:id" do
   @category = Category.find(params[:id])
  erb :"categories/show"
end

post "/categories" do
  @category = Category.new(params[:category])

  if @category.save
    redirect :"categories/#{@category.id}"
  end

end

# get "/categories/:id/edit" do
#    @category = Category.find(params[:id])
#   erb :"categories/edit"
# end
