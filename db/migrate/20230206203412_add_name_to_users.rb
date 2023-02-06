class AddNameToUsers < ActiveRecord::Migration[6.1]
  def change
    # add name column to users table
    add_column :users, :name, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
