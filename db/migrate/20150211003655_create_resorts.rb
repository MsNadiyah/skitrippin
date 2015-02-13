class CreateResorts < ActiveRecord::Migration
  def change
    create_table :resorts do |t|
      t.string :name
      t.string :addresss
      t.string :country
      t.string :website
      t.string :phone_number
      t.integer :skiable_acres
      t.integer :lift_count
      t.integer :run_count
      t.string :major_airport
      t.string :local_airport
      t.boolean :snowboard
      t.integer :level_green
      t.integer :level_blue
      t.integer :level_black
      t.integer :level_double_black
      t.string :description

      t.timestamps null: false
    end
  end
end
