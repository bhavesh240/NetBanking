class AddOtpToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :otp, :integer
  end
end
