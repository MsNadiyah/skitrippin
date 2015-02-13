class AddAirportTousers < ActiveRecord::Migration
  def change
    add_column :users, :airport, :string
  end
end
