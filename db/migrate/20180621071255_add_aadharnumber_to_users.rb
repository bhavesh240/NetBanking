class AddAadharnumberToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :aadharnumber, :bigint
  end
end
