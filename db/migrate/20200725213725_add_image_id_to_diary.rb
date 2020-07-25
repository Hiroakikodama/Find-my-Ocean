class AddImageIdToDiary < ActiveRecord::Migration[5.2]
  def change
    add_column :diaries, :image_id, :string
  end
end
