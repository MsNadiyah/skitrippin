class ChangeColumnInUsers < ActiveRecord::Migration
  def change
    remove_column :users, :level
    remove_column :users, :decision_driver

    add_column :users, :level, :integer
    add_column :users, :decision_driver, :integer
    
  end
end
