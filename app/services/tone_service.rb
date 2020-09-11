class ToneService
  def self.analyze(text)
    response = conn.get('/v3/tone?version=2017-09-21') do |request|
      request.params['text'] = text
    end
    # document_tone object
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    @conn ||= Faraday.new(ENV['TONE_ANALYZER_URL']) do |connection|
      connection.basic_auth("apikey", ENV['TONE_ANALYZER_API_KEY'])
    end
  end
end
