require 'dotenv/tasks'

task start: :dotenv do
  sh "rerun 'rackup -p #{ENV['PORT']}'"
end