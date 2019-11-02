class CreateCooks < ActiveRecord::Migration[5.2]
  def change
    create_table :cooks do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :email
      t.integer :role
      t.integer :role2

      t.timestamps
    end
  end
end
