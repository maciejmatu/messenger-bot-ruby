require 'dotenv/load'
require 'facebook/messenger'
require 'http'
require 'sucker_punch'
require_relative 'app/jobs/response_job.rb'
require_relative 'app/services/history_service.rb'
require_relative 'app/bot.rb'

run Facebook::Messenger::Server
