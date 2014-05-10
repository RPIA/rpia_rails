class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstname, :string
    add_index :users, :firstname
    add_column :users, :lastname, :string
    add_index :users, :lastname
    add_column :users, :rin, :string
    add_column :users, :cellnumber, :string
    add_column :users, :homenumber, :string
    add_column :users, :addressrpi, :text
    add_column :users, :addresshome, :text
    add_column :users, :roles_mask, :integer
  end
end
