class AddConditionsToResorts < ActiveRecord::Migration
  def change
    add_column :resorts, :conditions, :text
  end
end
