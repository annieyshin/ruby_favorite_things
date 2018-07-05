require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/favorite_things')

#home page is the /
get('/') do
  @list = Item.all()
  erb(:list)
end

#sending information
post('/') do
  name = params["name"]
  item = Item.new(name)
  item.save()
  @list = Item.all()
  erb(:list)
end

#gets information from items page
get('/items/:id') do
  @item = Item.find(params[:id])
  erb(:item)
end
