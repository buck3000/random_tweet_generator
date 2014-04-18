require_relative '../../lib/TweetImporter'

class Tweet < ActiveRecord::Base
  include TwitterClient

  def add_tweet(id)
    tweet = TwitterClient.get_single_tweet(id)
    Tweet.create(text: tweet.text, favorite_count: tweet.favorite_count, retweet_count: tweet.retweet_count)
  end

  def self.random_tweet
    array = Tweet.where("retweet_count > 2260")
    array.sample.text
  end
end
