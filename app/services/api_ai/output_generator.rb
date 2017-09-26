module ApiAi
  class OutputGenerator
    ACTION_PERFORMERS = {
      date: Actions::DateAction
  }.freeze

    def call
      action = ACTION_PERFORMERS[data[:action]]
      return [{ text: data[:output] }] if action.nil?

      action.new(data).call
    end

    attr_reader :data

    def initialize(data)
      @data = data
    end
  end
end
