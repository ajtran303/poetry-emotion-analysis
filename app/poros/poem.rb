class Poem
  attr_reader :title, :author, :text, :tone
  def initialize(params)
    @title = params[:title]
    @author = params[:author]
    @text = params[:lines].join(' ')
    @tone = ToneFacade.get_tone(text)
  end
end
