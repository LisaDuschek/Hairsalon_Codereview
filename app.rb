require('sinatra')
require('sinatra/reloader')
require('./lib/client')
require('./lib/stylist')
also_reload('lib/**/*.rb')
require('pg')
require 'pry'

DB = PG.connect({:dbname => "hairsalon"})

get("/") do
	erb(:index)
end

get("/clear") do
	DB.exec("DELETE FROM stylists;")
	erb(:index)
end

get("/stylists") do
	@stylists = Stylist.all()
	erb(:stylists)
end

get("/stylists/new") do
	erb(:stylists_new)
end

post("/stylists") do
	name = params.fetch("name")
	stylist = Stylist.new({:name => name, :id => nil})
	stylist.save()
  @stylists = Stylist.all()
	erb(:stylist_success)
end

get("/stylists/:id") do
	@stylist = Stylist.find(params.fetch("id").to_i())
	erb(:stylist)
end

get("/client") do
	@clients = Client.all()
	erb(:client)
end

get("/client/:id") do
	@stylist = params.fetch("id").to_i()
	erb(:client)
end

post("/clients/:id") do
	name = params.fetch("name")
	stylists_id = params.fetch("id").to_i()
	@stylist = Stylist.find(stylists_id)
	@client = Client.new({:name => name, :stylists_id => stylists_id})
	@client.save()
	erb(:client_success)
end


get("/stylists/:id/edit") do
  @stylist = Stylist.find(params.fetch("id").to_i())
  erb(:stylist_edit)
end

patch("/stylists/:id") do
  name = params.fetch("name")
  @stylist = Stylist.find(params.fetch("id").to_i())
  @stylist.update({:name => name})
  erb(:stylist)
end

delete("/stylists/:id") do
  @stylist = Stylist.find(params.fetch("id").to_i())
  @stylist.destroy()
  @stylists = Stylist.all()
  erb(:stylist)
end
