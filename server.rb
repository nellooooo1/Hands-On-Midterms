require 'sinatra'
require './expense'

expenses = []

get '/' do
	erb :index
end

get '/new' do
	erb :new
end

post '/save' do
	expenses = Expense.new(some_id, some_item, some_amount)
	redirect to '/'
end 

get '/show/:id' do
	erb :show
end
