class RemoveColumnFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :firstname, :string
    remove_column :users, :lastname, :string
    remove_column :users, :fathername, :string
    remove_column :users, :mothername, :string
    remove_column :users, :occupation, :string
    remove_column :users, :fatheroccupation, :string
    remove_column :users, :motheroccupation, :string
    remove_column :users, :documentimage, :string
    remove_column :users, :userimage, :string
    remove_column :users, :bankname, :string
    remove_column :users, :phonenumber, :bigint
    remove_column :users, :aadharnumber, :bigint
    remove_column :users, :pannumber, :string
  end
end
