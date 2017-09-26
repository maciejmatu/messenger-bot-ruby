require 'dotenv/load'
require 'facebook/messenger'
require 'http'
require 'date'
require 'json'
require 'sucker_punch'

require_relative 'app/jobs/response_job.rb'
require_relative 'app/services/api_ai/actions/date_action.rb'
require_relative 'app/services/api_ai/output_generator.rb'
require_relative 'app/services/api_ai/request_sender.rb'
require_relative 'app/services/api_ai/response_parser.rb'
require_relative 'app/services/history_service.rb'
require_relative 'app/bot.rb'

run Facebook::Messenger::Server
