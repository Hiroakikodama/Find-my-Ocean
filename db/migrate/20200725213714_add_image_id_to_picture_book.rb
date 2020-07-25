class AddImageIdToPictureBook < ActiveRecord::Migration[5.2]
  def change
    add_column :picture_books, :image_id, :string
  end
end
