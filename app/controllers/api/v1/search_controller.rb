class Api::V1::SearchController < ApplicationController
  def index
    # 他に絶対いい方法があるはずなのでコード修正していくと思います。
    tweet_json = []
    @tweets = Tweet.where(screen_name: params[:id])
    @tweets.each do |tweet|
      if tweet[:tweet_created_at].include?(params[:date])
        tweet_json.push(tweet)
      end
    end
    if tweet_json.empty?
      render json: '{"404":"Not Found"}'
    else
      render json: tweet_json
    end
  end

  private
  # リクエストパラメータのバリデーション
  def search_params
    params.permit(:id)
    params.permit(:date)
  end
end
