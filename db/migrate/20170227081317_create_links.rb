class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :user_id
      t.text :trip_url
      t.text :url_comment
      t.timestamps null: false
    end
  end
end
