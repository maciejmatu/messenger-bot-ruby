class HistoryService
  def self.load_random(url)
    json_response = HTTP.get("#{ENV['HISTORY_API_URL']}#{url}").parse(:json)

    json_response['data']['Events'].sample
  end
end