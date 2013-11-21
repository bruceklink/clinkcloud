class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :network_id
      t.integer :category_id
      t.integer :linked_account_id
      t.integer :friend_id
      t.string :post_type
      t.string :comment
      t.string :link
      t.date :time_stamp
      t.integer :views
      t.integer :interactions
    end
  end
end
