class SearchController < ApplicationController
  def index
    if params[:q].nil?
      @course = []
    else
      @course = Course.search params[:q]
    end
  end
end