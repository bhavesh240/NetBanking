class CreateTableBanks < ActiveRecord::Migration[5.2]
  def change
    create_table :banks do |t|
      t.string :bankname
      t.string :manager_name
    end
  end
end
