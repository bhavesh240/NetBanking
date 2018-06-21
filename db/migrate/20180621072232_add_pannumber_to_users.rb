class AddPannumberToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :pannumber, :string
  end
end
