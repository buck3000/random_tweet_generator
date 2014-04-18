require_relative '../../config/db.rb'
require_relative '../../lib/TwitterClient'

class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :text
      t.integer :favorite_count
      t.integer :retweet_count
      t.timestamps
    end
  end
end
