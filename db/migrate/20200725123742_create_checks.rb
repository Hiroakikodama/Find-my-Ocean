class CreateChecks < ActiveRecord::Migration[5.2]
  def change
    create_table :checks do |t|
      t.integer :check_list_id
      t.text :check

      t.timestamps
    end
  end
end
