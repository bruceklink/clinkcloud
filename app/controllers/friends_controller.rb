require 'open-uri'


class FriendsController < ApplicationController

  def index
 
      parsed_data = JSON.parse(open("https://graph.facebook.com/me/home?access_token=CAACEdEose0cBACZBOXkaitahSonTPdZBktKTSNXivLi9IZBhHBOaUNNwfH9ABw8pjpY7UCLijKEMSZCv1SrYvoVkAD8KyZBQHZBxSn2CBDlKNZCFU46M0VgnGg7TQtiZAJnotZAMwjD9KeEZB48Sok1RzS1AWXhUAh7rTntdwDquZCQF0DuPuVjM6XvAvG5YZB6wbCL2Cy2ZBdXkDGwZDZD&limit=200").read)

    
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
