class RemoveFromAccountNumberFromTransactions < ActiveRecord::Migration[5.2]
  def change
    remove_column :transactions, :from_account_number, :string
    remove_column :transactions, :to_account_number, :string
  end
end
