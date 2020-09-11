class SearchController < ApplicationController
  def index
    @poems = PoemsFacade.get_poems_by_author(params[:author])
  end
end
