class FriendsController < ApplicationController

  def index
    @friends = Friend.all
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
