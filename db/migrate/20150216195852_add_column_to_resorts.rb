class AddColumnToResorts < ActiveRecord::Migration
  def change
    add_column :resorts, :sno_country_id, :string
  end
end
