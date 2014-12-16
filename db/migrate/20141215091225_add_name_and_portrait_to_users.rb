class AddNameAndPortraitToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :portrait, :string
  end
end
