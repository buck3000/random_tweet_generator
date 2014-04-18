require_relative 'TwitterClient'

module TweetImporter
  def self.import
    TwitterClient.create_client
      TwitterClient.get_last_200_tweets('officialjaden').each do |tweet|
       Tweet.create(text: tweet.text, favorite_count: tweet.favorite_count, retweet_count: tweet.retweet_count)
      end
  end
end
