require 'factory_bot'
require 'faker'
require 'rspec'
require 'httparty'

require_relative 'spec_helper/spec_rest'

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENV['AMBIENTE']}.yml")

World(REST, FactoryBot::Syntax::Methods)