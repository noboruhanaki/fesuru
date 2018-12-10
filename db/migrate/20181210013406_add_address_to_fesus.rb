class AddAddressToFesus < ActiveRecord::Migration[5.1]
  def change
    add_column :fesus, :address, :string
    add_column :fesus, :latitude, :float
    add_column :fesus, :longitude, :float
  end
end
