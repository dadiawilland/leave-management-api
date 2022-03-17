class CreateLeaveCredits < ActiveRecord::Migration[7.0]
  def change
    create_table :leave_credits do |t|
      t.integer :leave_type
      t.integer :credits
      t.bigint :user_id

      t.timestamps
    end
  end
end
