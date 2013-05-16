require 'sinatra'
require 'haml'
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
  @assignments = Assignment.order('id')
  render :haml, :assignments
end

post '/assignments' do
  @assignment = Assignment.create(params[:assignment])
  redirect "/assignments"
end

get '/rules/getting-started' do
  render :haml, :'rules/getting_started'
end

get '/rules/problem-statement' do
  render :haml, :'rules/problem_statement'
end

get '/rules/make-play' do
  render :haml, :'rules/make_play'
end

get '/rules/tile-info' do
  render :haml, :'rules/tile_info'
end

get '/rules/board-info' do
  render :haml, :'rules/board_info'
end

get '/rules/dictionary' do
  render :haml, :'rules/dictionary'
end

get '/schedule' do
  render :haml, :schedule
end

get '/awards' do
  render :haml, :awards
end


after do
  ActiveRecord::Base.connection.close
end