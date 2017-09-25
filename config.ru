require 'dotenv/load'
require 'facebook/messenger'
require 'http'
require_relative 'app/services/history_service.rb'
require_relative 'app/bot.rb'

run Facebook::Messenger::Server
