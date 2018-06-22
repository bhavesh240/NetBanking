class RemoveAddressableTypeFromAddresses < ActiveRecord::Migration[5.2]
  def change
    remove_column :addresses, :addressable_type, :string
  end
end
