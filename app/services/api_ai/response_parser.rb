module ApiAi
  class ResponseParser
    def call
      result, session_id = response.values_at(:result, :sessionId)

      { output: result[:fulfillment][:speech],
        psid: session_id,
        parameters: result[:parameters],
        action: result[:action].to_sym,
        action_incomplete: result[:actionIncomplete] }
    end

    private

    attr_reader :response

    def initialize(response)
      @response = response
    end
  end
end