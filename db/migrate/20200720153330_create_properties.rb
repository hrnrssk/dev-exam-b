class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.integer :rent
      t.text :address
      t.integer :age
      t.text :memo

      t.timestamps
    end
  end
end
