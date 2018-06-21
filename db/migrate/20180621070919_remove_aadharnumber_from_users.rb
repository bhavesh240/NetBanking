class RemoveAadharnumberFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :aadharnumber, :integer
  end
end
