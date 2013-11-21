class LinkedAccountsController < ApplicationController

  def index
    @linked_accounts = LinkedAccount.all
  end

  def show
    @linked_account = LinkedAccount.find_by(id: params[:id])
  end

  def new
  end

  def create
    @linked_account = LinkedAccount.new
    @linked_account.user_id = params[:user_id]
    @linked_account.network_id = params[:network_id]
    @linked_account.linked_account_username = params[:linked_account_username]
    @linked_account.linked_account_password = params[:linked_account_password]

    if @linked_account.save
      redirect_to linked_accounts_url, notice: "Linked account created successfully."
    else
      render 'new'
    end
  end

  def edit
    @linked_account = LinkedAccount.find_by(id: params[:id])
  end

  def update
    @linked_account = LinkedAccount.find_by(id: params[:id])
    @linked_account.user_id = params[:user_id]
    @linked_account.network_id = params[:network_id]
    @linked_account.linked_account_username = params[:linked_account_username]
    @linked_account.linked_account_password = params[:linked_account_password]

    if @linked_account.save
      redirect_to linked_accounts_url, notice: "Linked account updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @linked_account = LinkedAccount.find_by(id: params[:id])
    @linked_account.destroy

    redirect_to linked_accounts_url, notice: "Linked account deleted."
  end
end
