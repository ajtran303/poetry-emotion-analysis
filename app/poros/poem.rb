class Poem
  attr_reader :title, :author, :text, :tone
  def initialize(params)
    @title = params[:title]
    @author = params[:author]
    @text = params[:lines]
    @tone = ToneFacade.get_tone(text.join(' '))
  end
end
