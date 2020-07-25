class AddLidtTitleToCheckLists < ActiveRecord::Migration[5.2]
  def change
    add_column :check_lists, :list_title, :text
  end
end
