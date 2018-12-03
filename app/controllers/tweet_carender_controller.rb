class TweetCarenderController < ApplicationController

  # ユーザー検索
  def show
    
  end

  # ユーザーのアップロードしたJSONファイルをDBに保存する
  def index
    json = ActiveSupport::JSON.decode(File.read('Sample.json'))
    json.each do |data|
      puts data['user']['screen_name']
      puts data['text']
      puts data['created_at']
    end
  end
end
