require 'open-uri'


class FriendsController < ApplicationController

  def index
      parsed_data = JSON.parse(open("https://graph.facebook.com/me/home?access_token=CAACEdEose0cBAJyVcIW7kZALZAPsKZAHJZBGVSeS5JNl4N5lYqkSseM5KIXjitXO6treZBSubZAD3h1oIeAMsG1aZBx4AHrGNNRmPT2ilg0Gl3wDVR45IT9lIkpCI7sQW7MO080nqYNPatHp6KzE6QJ57wH2tZCsBWzFuzzlFHMUoUafpAjT1CpN0308TotfOfdHeWZA5iVdKzgZDZD&limit=600").read)

    
      @posts = parsed_data["data"]

  end

  def show
    @friend = Friend.find_by(id: params[:id])
  end

  def new
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
    @friend = Friend.find_by(id: params[:id])
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
