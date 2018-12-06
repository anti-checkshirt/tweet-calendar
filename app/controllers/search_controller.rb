require "date"
class SearchController < ApplicationController
  def index

    # screen_nameを検索した際、該当のユーザのツイートがない場合
    if !Tweet.exists?(screen_name: params[:id])
      p "Not found => screen_name"
    else
      @tweets = Tweet.where(screen_name: params[:id])
      if params[:start_date].nil?
        today_date = Date.today
        start_date = today_date.year.to_s + "-" + today_date.month.to_s
        @tweets.each do |tweet|
          if tweet[:tweet_created_at].include?(start_date.to_s)
            p tweet
          else
            p "Not found => tweet"
          end
        end
      else
        p params[:start_date]
      end
    end
  end
end
