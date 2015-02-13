class RenameColumnInUsers < ActiveRecord::Migration
  def change
    rename_column :resorts, :addresss, :address
  end
end
