class Api::V1::SearchController < ApplicationController
  def index
    render json: Tweet.all
  end
end
