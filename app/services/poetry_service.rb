class PoetryService
  def self.find_poems_by_author(author)
    response = Faraday.get "https://poetrydb.org/author/#{author}/author,title,lines"
    poems = JSON.parse(response.body, symbolize_names: true)
    poems[0...10]
  end
end
