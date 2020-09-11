class PoemsFacade
  def self.get_poems_by_author(author)
    poems_params = PoetryService.find_poems_by_author(author)
    poems_params.map do |params|
      Poem.new(params)
    end
  end
end
