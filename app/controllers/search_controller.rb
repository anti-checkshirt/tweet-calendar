class SearchController < ApplicationController
  def index
    @tweet = Tweet.find_by(screen_name: params[:id])
    # screen_nameを検索した際、該当のユーザのツイートがない場合
    if @tweet.nil?
      p "Not found => tweet"
    else
      if params[:start_date].nil?
        p "Not found => start_date"
      else
        p params[:start_date]
      end
    end
  end
end
