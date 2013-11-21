class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.string :network_name
      t.string :base_api_url
      t.string :app_secret
      t.string :app_id
    end
  end
end
