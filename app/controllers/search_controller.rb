class SearchController < ApplicationController
  def index
    @tweet = Tweet.find_by(screen_name: params[:id])
    p @tweet
  end
end
