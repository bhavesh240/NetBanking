class AddAccountNumberToBeneficiary < ActiveRecord::Migration[5.2]
  def change
    add_column :beneficiaries, :account_number, :string
  end
end
