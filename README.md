[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)[![GitHub release](https://img.shields.io/github/release/takkii/Twitter_tweet.svg?style=flat)](GitHub)[![GitHub Status](https://img.shields.io/github/last-commit/takkii/Twitter_tweet.svg?style=flat)](GitHub)

### Twitter_tweet

tubuyaki_guiからTwitterでTweetができるようになった、軽量型のクライアントです。つぶやくことができます。

[三部作]

[tubuyaki (オフラインつぶやき)](https://github.com/takkii/tubuyaki)

[tubuyaki_gui (ボタンが画像オフラインつぶやき)](https://github.com/takkii/tubuyaki_gui)

Twitter_tweet (Twitterでつぶやき)


画像

![スクリーン](https://github.com/takkii/Twitter_tweet/blob/master/image/screen.png)

アクセストークンなどは、登録から入手。

[登録](https://apps.twitter.com/)

※ twitter_tweet.rbとtweet_cmd.rbの中にある''となっている箇所に挿入。

動作環境

```txt
Windows
UNIX
Linuxカーネル
```

環境構築

```txt
git clone https://github.com/takkii/Twitter_tweet.git

bundle install
```

つぶやき

```ruby
ruby twitter_tweet.rb
```

タイムライン取得

```ruby
ruby tweet_cmd.rb
```

※ 取得後のタイムラインはlog/backup.txtに書き込まれています。

Qiita関連記事

[Tubuyakiのその後](https://qiita.com/takkii/items/e265bd9c18ccbe28ecc8)