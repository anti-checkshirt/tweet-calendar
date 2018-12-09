class SearchController < ApplicationController
  def index
        
  end
    
  private
  # リクエストパラメータのバリデーション
  def search_params
    params.permit(:id)
    params.permit(:date)
  end
end
