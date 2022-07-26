class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :username
      t.string :password_digest
      t.date :date_of_birth
      t.string :mobile
      t.boolean :employer
      t.boolean :admin

      t.timestamps
    end
  end
end
