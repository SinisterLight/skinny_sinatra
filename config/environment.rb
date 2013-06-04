require 'erb'

DATABASE_URL = YAML.load(ERB.new(File.read(File.expand_path(File.join(File.dirname(__FILE__), 'database.yml')))).result)[ENV['RACK_ENV']]

#set :database, DATABASE_URL
ActiveRecord::Base.establish_connection(DATABASE_URL)
ActiveRecord::Base.logger = nil

#set :database, 'database.yml'
