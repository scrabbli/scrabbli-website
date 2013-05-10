require 'sinatra'

get '/' do
  erb :index
end

get '/assignments' do
  erb :assignments
end

get '/rules' do
  erb :rules
end