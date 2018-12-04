class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :text
      t.string :tweet_created_at
      t.string :screen_name
      t.string :profile_image_url

      t.timestamps
    end
  end
end
