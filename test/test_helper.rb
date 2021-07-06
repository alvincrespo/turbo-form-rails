ENV['RAILS_ENV'] = 'test'
require 'pry-byebug'

require 'minitest/autorun'

require 'rails'
rails_version  =  Rails.version[0..2]

require_relative "rails#{rails_version}/config/environment"

require "rails/test_help"
