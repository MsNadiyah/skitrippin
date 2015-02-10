class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :zip
      t.boolean :ski
      t.boolean :snowboard
      t.string :email
      t.string :level
      t.boolean :travel
      t.integer :group_size
      t.string :decision_driver

      t.timestamps null: false
    end
  end
end
