class HistoryService
  API_URL = 'http://history.muffinlabs.com/date'.freeze

  def self.load_random(url)
    json_response = HTTP.get("#{API_URL}/#{url}").parse(:json)

    json_response['data']['Events'].sample
  end
end