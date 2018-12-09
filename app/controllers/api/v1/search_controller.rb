class Api::V1::SearchController < ApplicationController
  def index
    tweet_json = []
    @tweets = Tweet.where(screen_name: params[:id])
    @tweets.each do |tweet|
      if tweet[:tweet_created_at].include?(params[:date])
        tweet_json.push(tweet)
      end
    end
    render json: tweet_json
  end

  private
  # リクエストパラメータのバリデーション
  def search_params
    params.permit(:id)
    params.permit(:date)
  end
end
