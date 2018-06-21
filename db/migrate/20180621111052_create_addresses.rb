class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :houseno
      t.string :streetno
      t.string :area
      t.string :city
      t.string :state
      t.string :country
      t.integer :pincode
      t.string :addressable_type

      t.timestamps
    end
  end
end
