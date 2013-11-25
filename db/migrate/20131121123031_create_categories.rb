class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :original
      t.string :media
    end
  end
end
