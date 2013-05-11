require 'sinatra'
require 'active_support/core_ext'
require 'sinatra/simple-navigation'
require 'simple-navigation-bootstrap'
require 'padrino-helpers'
require './assignment'
require './config/environments'


register Padrino::Helpers
use ActiveRecord::ConnectionAdapters::ConnectionManagement

get '/' do
  render :haml, :index
end

get '/assignments' do
  @assignments = Assignment.all
  render :haml, :assignments
end

post '/assignments' do
  @assignment = Assignment.create(params[:assignment])
  redirect "/assignments"
end

get '/rules' do
  render :haml, :rules
end

get '/schedule' do
  render :haml, :schedule
end

after do
  ActiveRecord::Base.connection.close
end