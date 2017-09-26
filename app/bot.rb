include Facebook::Messenger

Bot.on :message do |message|
  message.mark_seen
  message.typing_on

  ResponseJob.perform_async(message)
end
