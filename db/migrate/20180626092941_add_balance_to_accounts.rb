class AddBalanceToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :balance, :integer
  end
end
