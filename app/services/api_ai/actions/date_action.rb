module Actions
  class DateAction
    def call
      target_date = Date.parse(data[:output]).strftime('/%-m/%d')
      random_fact = HistoryService.load_random(target_date)

      [
        {
          text: "#{random_fact['year']}/#{target_date}. \u000A #{random_fact['text']}"
        },
        {
          attachment: {
            type: 'template',
            payload: {
              template_type: 'button',
              text: 'Read more about:',
              buttons: generate_buttons(random_fact)
            }
          }
        }
      ]
    end

    private

    attr_reader :data

    def initialize(data)
      @data = data
    end

    def generate_buttons(random_fact)
      random_fact['links'][0..2].map do |link|
        { type: 'web_url', title: link['title'], url: link['link'] }
      end
    end
  end
end