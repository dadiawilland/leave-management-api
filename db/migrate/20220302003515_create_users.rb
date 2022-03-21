class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :contact
      t.string :address
      t.string :department
      t.string :email
      t.string :avatar_id
      t.integer :role_id

      t.timestamps
    end
  end
end
