class HistoryService
  API_URL = 'http://history.muffinlabs.com/date'.freeze

  def self.load_data
    # today = Time.new.strftime("%B %d")
    HTTP.get(API_URL).parse(:json)
  end

  def self.select_random
    json_response = load_data

    json_response['data']['Events'].sample
  end
end