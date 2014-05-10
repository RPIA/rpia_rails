class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_index :users, :first_name
    add_column :users, :last_name, :string
    add_index :users, :last_name
    add_column :users, :rin, :string
    add_column :users, :cell_number, :string
    add_column :users, :home_number, :string
    add_column :users, :rpi_address, :text
    add_column :users, :home_address, :text
    add_column :users, :roles_mask, :integer
  end
end
