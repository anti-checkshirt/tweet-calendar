class Api::V1::SearchController < ApplicationController
  def index
    render_json = {}
    @tweets = Tweet.where(screen_name: params[:id])
    @tweets.each do |tweet|
      if tweet[:tweet_created_at].include?(params[:date])
        p tweet
        render_json["screen_name"] = tweet.screen_name
        render_json["text"] = tweet.text
      else
        render_json["Error"] = "Not found."
      end
    end
    render json: render_json
  end

  private
  # リクエストパラメータのバリデーション
  def search_params
    params.permit(:id)
    params.permit(:date)
  end
end
