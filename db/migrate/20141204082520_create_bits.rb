class CreateBits < ActiveRecord::Migration
  def change
    create_table :bits do |t|
      t.string :content

      t.timestamps
    end
  end
end
