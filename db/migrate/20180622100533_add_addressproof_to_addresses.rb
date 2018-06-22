class AddAddressproofToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :addressproof, :string
  end
end
