class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :fathername, :string
    add_column :users, :mothername, :string
    add_column :users, :occupation, :string
    add_column :users, :fatheroccupation, :string
    add_column :users, :motheroccupation, :string
    add_column :users, :documentimage, :string
    add_column :users, :userimage, :string
    add_column :users, :bankname, :string
    add_column :users, :phonenumber, :bigint
    add_column :users, :aadharnumber, :bigint
    add_column :users, :pannumber, :string
  end
end
