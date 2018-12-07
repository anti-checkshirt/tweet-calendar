require "date"
class SearchController < ApplicationController
  def index

    # screen_nameを検索した際、該当のユーザのツイートがない場合
    if !Tweet.exists?(screen_name: params[:id])
      p "Not found => screen_name"
    else
      @tweets = Tweet.where(screen_name: params[:id]).order(tweet_created_at: :desc)
      # p @tweets      
      if params[:start_date] != nil
        today_date = Date.today
        start_date = today_date.year.to_s + "-" + today_date.month.to_s
        @tweets.each do |tweet|
          if tweet[:tweet_created_at].include?(params[:start_date].to_s)
            p tweet
          else
            return "Not found => tweet"
          end
        end
      else
        # ここに実装をどうするか悩んでます。
        p params[:start_date]
      end
    end
  end
end
