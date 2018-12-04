class TweetCarenderController < ApplicationController

  # ユーザー検索
  def show

  end

  def upload

  end

  def import
    upload_file = params[:file].path
    puts 'fileの内容は'
    json = ActiveSupport::JSON.decode(File.read(upload_file))
    json.each do |data|
      p data['text']
    end
  end

  # ユーザーのアップロードしたJSONファイルをDBに保存する
  def index
    json = ActiveSupport::JSON.decode(File.read('Sample.json'))
    json.each do |data|
      puts data['user']['screen_name']
      puts data['text']
      puts data['created_at']

      @tweet = Tweet.new(
        text: data['text'],
        tweet_created_at: data['created_at'],
        screen_name: data['user']['screen_name'],
        profile_image_url: data['user']['profile_image_url_https']
      )
      if @tweet.save
        puts 'DBに保存成功'
      else
        puts 'DBに保存失敗'
      end
    end
  end
end
