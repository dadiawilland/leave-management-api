class CreateAccessTokens < ActiveRecord::Migration[7.0]
  def change
    create_table :access_tokens do |t|
      t.integer :bearer_id, null: false
      t.string :bearer_type, null: false
      t.string :token, null: false

      t.timestamps null: false
    end

    add_index :access_tokens, [:bearer_id, :bearer_type]
    add_index :access_tokens, :token, unique: true
  end
end
