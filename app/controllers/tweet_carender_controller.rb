class TweetCarenderController < ApplicationController

  # ユーザー検索
  def show

  end

  def upload

  end

  # ユーザーのアップロードしたJSONファイルをDBに保存する
  def import
    upload_file = params[:file].path
    json = ActiveSupport::JSON.decode(File.read(upload_file))
    json.each do |data|
      p data['text']

      @tweet = Tweet.new(
        text: data['text'],
        tweet_created_at: data['created_at'],
        screen_name: data['user']['screen_name'],
        profile_image_url: data['user']['profile_image_url_https']
      )
      if @tweet.save
        p 'DB保存に成功'
      else
        # 一回でも保存に失敗したらリダイレクトする
        render('/upload')
      end
    end
    redirect_to('/')
  end
end
