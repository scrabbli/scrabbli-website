require 'sinatra/activerecord'
require 'pg'
require 'uri'

class Assignment < ActiveRecord::Base
  attr_accessible :name, :language, :github

  validates :name, :language, :github, presence: true
end