class AddVerifyByToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :verify_by, :string
  end
end
