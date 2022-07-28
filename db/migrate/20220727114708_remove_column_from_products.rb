class RemoveColumnFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :name
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
