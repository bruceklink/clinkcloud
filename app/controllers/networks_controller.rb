class NetworksController < ApplicationController

  def index
    @networks = Network.all
  end

  def show
    @network = Network.find_by(id: params[:id])
  end

  def new
  end

  def create
    @network = Network.new
    @network.network_name = params[:network_name]
    @network.base_api_url = params[:base_api_url]
    @network.app_secret = params[:app_secret]
    @network.app_id = params[:app_id]

    if @network.save
      redirect_to networks_url, notice: "Network created successfully."
    else
      render 'new'
    end
  end

  def edit
    @network = Network.find_by(id: params[:id])
  end

  def update
    @network = Network.find_by(id: params[:id])
    @network.network_name = params[:network_name]
    @network.base_api_url = params[:base_api_url]
    @network.app_secret = params[:app_secret]
    @network.app_id = params[:app_id]

    if @network.save
      redirect_to networks_url, notice: "Network updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @network = Network.find_by(id: params[:id])
    @network.destroy

    redirect_to networks_url, notice: "Network deleted."
  end
end
