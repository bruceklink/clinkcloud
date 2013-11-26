require 'open-uri'


class FriendsController < ApplicationController

  def index
 
      @parsed_data = JSON.parse(open("https://graph.facebook.com/me/home?access_token=CAACEdEose0cBAHXb3fIOkTivgKEJh0IqMHkw3fahINzwErLdCrddxiMl0QMCaVaP9CxoZCt1n5J2szZBdQyH19ZCwts3XHZBVvYr05dlxrqt0SvguXsZB8jACHCgpckfoZCdJomZCs1DgiZAohnlQVefLPabuktZBsupTiUniAQxxZCVutXhfhiI8AyIyjmJHjmkWjkn42O3PRFAZDZD").read)

      url = "https://graph.facebook.com/me/home?access_token=CAACEdEose0cBAHXb3fIOkTivgKEJh0IqMHkw3fahINzwErLdCrddxiMl0QMCaVaP9CxoZCt1n5J2szZBdQyH19ZCwts3XHZBVvYr05dlxrqt0SvguXsZB8jACHCgpckfoZCdJomZCs1DgiZAohnlQVefLPabuktZBsupTiUniAQxxZCVutXhfhiI8AyIyjmJHjmkWjkn42O3PRFAZDZD"

      raw_data = open(url).read

      @parsed_data = JSON.parse(raw_data)

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
