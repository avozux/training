class SearchController < ApplicationController
  def index
    if params[:q].nil?
      @chapter = []
    else
      @chapter = Chapter.search params[:q]
    end
  end
end