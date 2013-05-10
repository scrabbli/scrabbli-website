require 'sinatra'

get '/' do
  erb :index
end

get '/assignments' do
  erb :assignments
end