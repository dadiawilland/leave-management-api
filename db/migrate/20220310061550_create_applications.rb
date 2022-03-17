class CreateApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :leave_applications do |t|
      t.integer :days
      t.string :status
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
