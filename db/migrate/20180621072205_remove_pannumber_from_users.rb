class RemovePannumberFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :pannumber, :integer
  end
end
