class IsDeleteTable < ActiveRecord::Migration[5.2]
  def change
  	drop_table :picture_book_images
  end
end
