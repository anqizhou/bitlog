class AddBitIdToImages < ActiveRecord::Migration
  def change
    add_column :images, :bit_id, :integer
  end
end
