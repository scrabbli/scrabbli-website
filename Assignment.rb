require 'active_record'
require 'pg'
require 'uri'

db = URI.parse(ENV['DATABASE_URL'] || 'postgres://localhost/scrabbli')

ActiveRecord::Base.establish_connection(
  :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
  :host     => db.host,
  :port     => db.port,
  :username => db.user,
  :password => db.password,
  :database => db.path[1..-1],
  :encoding => 'utf8'
)

class Assignment < ActiveRecord::Base
  attr_accessible :name, :language, :github

  validates :name, :language, :github, presence: true
end