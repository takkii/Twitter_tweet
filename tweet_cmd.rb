require 'twitter'

client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ''
      config.consumer_secret     = ''
      config.access_token        = ''
      config.access_token_secret = ''
end

Dir.mkdir("log",0666) unless FileTest.exist?("log")

File.open('log/backup.txt', 'a:utf-8', perm=0666) do |f|
max_id = client.home_timeline.first.id
20.times do
    client.home_timeline(max_id: max_id,count: 200).each do |tweet|
        f.puts tweet.user.name
        f.puts tweet.full_text
        f.puts "Fav: #{tweet.favorite_count}, Retweet: #{tweet.retweet_count}"
        puts tweet.user.name
        puts tweet.full_text
        puts "Fav: #{tweet.favorite_count}, Retweet: #{tweet.retweet_count}"
        max_id = tweet.id unless tweet.retweeted?
    end
    #sleep 60
    exit!
end
end
