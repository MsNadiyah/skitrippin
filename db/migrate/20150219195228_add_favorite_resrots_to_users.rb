class AddFavoriteResrotsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :favorite_resort, :string
  end
end
