class CreateLinkedAccounts < ActiveRecord::Migration
  def change
    create_table :linked_accounts do |t|
      t.integer :user_id
      t.integer :network_id
      t.string :linked_account_username
      t.string :linked_account_password
    end
  end
end
