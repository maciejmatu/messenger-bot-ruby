include Facebook::Messenger

Bot.on :message do |message|
  message.mark_seen
  message.typing_on

  # User.create(psid: message.sender['id'])
  api_ai_response = ApiAi::RequestSender.new(message.sender['id'], message.text).call
  parsed_response = ApiAi::ResponseParser.new(api_ai_response).call
  output = ApiAi::OutputGenerator.new(parsed_response).call

  ResponseJob.perform_async(output, message)
end