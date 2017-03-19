class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
    t.integer :user_id
    t.string :title
    t.datetime :trip_day
    t.integer :trip_fee
    t.string :place
    t.text :trip_plan
    end
  end
end
