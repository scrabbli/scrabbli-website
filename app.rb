require 'sinatra'
require 'active_support/core_ext'
require 'sinatra/simple-navigation'
require 'simple-navigation-bootstrap'
require 'padrino-helpers'
# require 'padrino-core/application/rendering'

# layout 'layout.erb'

set :partial_template_engine, :erb
enable :partial_underscores

register Padrino::Helpers
# register Padrino::Rendering

get '/' do
  render :erb, :index
end

get '/assignments' do
  render :erb, :assignments
end

get '/rules' do
  render :erb, :rules
end