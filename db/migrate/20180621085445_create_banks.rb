class CreateBanks < ActiveRecord::Migration[5.2]
  def change
    create_table :banks do |t|
      t.string :bankname,null:false
      t.integer :user_id,null:false
      t.integer :account_id,null:false

      t.timestamps
    end
  end
end
