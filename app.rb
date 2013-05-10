require 'sinatra'
require 'sinatra/simple-navigation'
require 'simple-navigation-bootstrap'

register Sinatra::SimpleNavigation
get '/' do
  erb :index
end

get '/assignments' do
  erb :assignments
end

get '/rules' do
  erb :rules
end