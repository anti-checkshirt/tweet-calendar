class Api::V1::SearchController < ApplicationController
  def index
    @tweet = Tweet.where(screen_name: params[:id], tweet_created_at: params[:date])
    
    render json: @tweet
  end

  private
  # リクエストパラメータのバリデーション
  def search_params
    params.permit(:id)
    params.permit(:date)
  end
end
