class Api::V1::SearchController < ApplicationController
  def index
    render json: Tweet.all
  end

  private
  # リクエストパラメータのバリデーション
  def search_params
    params.permit(:id)
    params.permit(:date)
  end
end
