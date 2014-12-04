class AddPostIdToBits < ActiveRecord::Migration
  def change
    add_column :bits, :post_id, :integer
  end
end
