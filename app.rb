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
  render :erb, :index
end

get '/assignments' do
  @assignments = Assignment.all
  render :erb, :assignments
end

post '/assignments' do
  @assignment = Assignment.create(params[:assignment])
  flash[:success] = "You've successfully joined scrabbli."
  redirect "/assignments"
end

get '/rules' do
  render :erb, :rules
end

after do
  ActiveRecord::Base.connection.close
end