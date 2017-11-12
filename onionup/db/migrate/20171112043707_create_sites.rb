class CreateSites < ActiveRecord::Migration[5.1]
  def change
    create_table :sites do |t|
      t.string :url, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
  end
end
