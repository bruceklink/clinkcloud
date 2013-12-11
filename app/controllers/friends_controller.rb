require 'open-uri'


class FriendsController < ApplicationController

  def index
      parsed_data = JSON.parse(open("https://graph.facebook.com/me/home?access_token=CAACEdEose0cBAPzJPCgzk7zcaaMFGkjbcRZBZCUZAoWZCZAibtvRo5ERemPGmjYM4BDz6HKZCCZBq3MiXBsbcrk4KHsbJQZBV9qb4s0gE9VnVQl7a8QbvskGZCqqFIZA7RJUJmZB3VbCZBfp6E2UJdxCke4Dl5wmMGeFcIqWh5ZA7ZAsvzkQC9NXRHnUNUZAnz9XLJdZCO9P6aK8I9qeCwZDZD&limit=200").read)

    
      @posts = parsed_data["data"]

      @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "xG6FxgPzS4N2l4OzEANC8A"
      config.consumer_secret     = "Z7LxQwsehgjLH0qt8FsH1FdHUPCTbSN8jBqNVSvuNg"
      config.access_token        = "97373933-8h9k4NOXovvE7ShPwzTS0lkyXtfckbU9CbF2w200y"
      config.access_token_secret = "pijOGeC6ncZSOcGQm0BlA1TRQVqwbLbKVVyYuOY0aJr6C"
    end
  end

  def show
      parsed_data = JSON.parse(open("https://graph.facebook.com/me/home?access_token=CAACEdEose0cBAPzJPCgzk7zcaaMFGkjbcRZBZCUZAoWZCZAibtvRo5ERemPGmjYM4BDz6HKZCCZBq3MiXBsbcrk4KHsbJQZBV9qb4s0gE9VnVQl7a8QbvskGZCqqFIZA7RJUJmZB3VbCZBfp6E2UJdxCke4Dl5wmMGeFcIqWh5ZA7ZAsvzkQC9NXRHnUNUZAnz9XLJdZCO9P6aK8I9qeCwZDZD&limit=200").read)

    
      @posts = parsed_data["data"]
  end

  def new
      parsed_data = JSON.parse(open("https://graph.facebook.com/me/home?access_token=CAACEdEose0cBAPzJPCgzk7zcaaMFGkjbcRZBZCUZAoWZCZAibtvRo5ERemPGmjYM4BDz6HKZCCZBq3MiXBsbcrk4KHsbJQZBV9qb4s0gE9VnVQl7a8QbvskGZCqqFIZA7RJUJmZB3VbCZBfp6E2UJdxCke4Dl5wmMGeFcIqWh5ZA7ZAsvzkQC9NXRHnUNUZAnz9XLJdZCO9P6aK8I9qeCwZDZD&limit=200").read)

    
      @posts = parsed_data["data"]

  end

  def create
    @friend = Friend.new
    @friend.user_id = params[:user_id]
    @friend.network_id = params[:network_id]
    @friend.network_username = params[:network_username]

    if @friend.save
      redirect_to friends_url, notice: "Friend created successfully."
    else
      render 'new'
    end
  end

  def edit
      parsed_data = JSON.parse(open("https://graph.facebook.com/me/home?access_token=CAACEdEose0cBAPzJPCgzk7zcaaMFGkjbcRZBZCUZAoWZCZAibtvRo5ERemPGmjYM4BDz6HKZCCZBq3MiXBsbcrk4KHsbJQZBV9qb4s0gE9VnVQl7a8QbvskGZCqqFIZA7RJUJmZB3VbCZBfp6E2UJdxCke4Dl5wmMGeFcIqWh5ZA7ZAsvzkQC9NXRHnUNUZAnz9XLJdZCO9P6aK8I9qeCwZDZD&limit=200").read)

    
      @posts = parsed_data["data"]
  end

  def update
    @friend = Friend.find_by(id: params[:id])
    @friend.user_id = params[:user_id]
    @friend.network_id = params[:network_id]
    @friend.network_username = params[:network_username]

    if @friend.save
      redirect_to friends_url, notice: "Friend updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @friend = Friend.find_by(id: params[:id])
    @friend.destroy

    redirect_to friends_url, notice: "Friend deleted."
  end
end
