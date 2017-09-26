module ApiAi
  class RequestSender
    def call
      JSON.parse(response, symbolize_names: true) if response.code == 200
    end

    private

    attr_reader :session_id, :message

    def initialize(session_id, message)
      @session_id = session_id
      @message = message
    end

    def response
      HTTP
        .auth("Bearer #{ENV['APIAI_ACCESS_TOKEN']}")
        .get(ENV['APIAI_URL'], params: {
          v: '20170926',
          sessionId: session_id,
          query: message,
          lang: 'en'
        })
    end
  end
end