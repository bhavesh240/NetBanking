class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :from_account_number
      t.string :to_account_number
      t.integer :amount
      t.integer :user_id

      t.timestamps
    end
  end
end
