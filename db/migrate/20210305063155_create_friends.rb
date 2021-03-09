class CreateFriends < ActiveRecord::Migration[6.1]
  def change
    create_table :friends do |t|
      t.string :name
      t.integer :age
      t.string :address
      t.integer :phone
      t.string :email

      t.timestamps
    end
  end
end
