require 'yaml'
require 'activerecord'
require 'erb'

ENV['APP_ENV'] ||= 'development'
ENV['APP_ROOT'] ||= "#{File.dirname(__FILE__)}"

APP_ENV = ENV['APP_ENV']
APP_ROOT = ENV['APP_ROOT']

def database_configuration_file
  File.join(File.dirname(__FILE__), 'config', 'database.yml')
end

def database_configuration
  YAML::load(ERB.new(IO.read(database_configuration_file)).result)
end