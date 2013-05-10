require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :database => "scrabbli"
)

class Assignment < ActiveRecord::Base
  attr_accessible :name, :language, :github

  validates :name, :language, :github, presence: true
end