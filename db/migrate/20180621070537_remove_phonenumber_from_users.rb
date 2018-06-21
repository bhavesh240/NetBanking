class RemovePhonenumberFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :phonenumber, :integer
  end
end
