class CreatePictureBookImages < ActiveRecord::Migration[5.2]
  def change
    create_table :picture_book_images do |t|
      t.string :image_id
      t.integer :picture_book_id

      t.timestamps
    end
  end
end
