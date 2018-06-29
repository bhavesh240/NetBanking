class AddCreatedAtToBanks < ActiveRecord::Migration[5.2]
  def change
    add_column :banks, :created_at, :datetime
  end
end
