# クローン

```bash
$ git clone https://github.com/anti-checkshirt/tweet-calendar.git
```



# 鯖起動

```bash
$ cd tweet-calendar
$ rails s -p 3000
```



# DBのテストデータ



クローンした状態だとDBにデータが入ってないので、http://localhost:3000/upload にアクセスして`Sample.json`をアップロードしてください。



アップロード後、http://localhost:3000/api/v1/search?id=tomoki_sun&date=2018-11 にアクセスするとDBのデータが返ってきます。



# DB

| 項目                    | 型     | 内容                |
| ----------------------- | ------ | ------------------- |
| text                    | String | ツイート内容        |
| created_at              | String | ツイートされた時間  |
| screen_name             | String | ユーザーID          |
| profile_image_url_https | String | プロフィール画像URL |

