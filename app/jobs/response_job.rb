class ResponseJob
  include SuckerPunch::Job

  def perform(output, message)
    output.map { |output_item| message.reply(output_item) }
  end
end