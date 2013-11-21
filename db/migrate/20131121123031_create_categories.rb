class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :original
      t.string :type
    end
  end
end
