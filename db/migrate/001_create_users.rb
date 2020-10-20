class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :uid, unique: true
      t.string :name
      t.string :email, unique: true
      t.integer :phone_number
      t.string :photoURL

      t.timestamps
    end
  end
end
