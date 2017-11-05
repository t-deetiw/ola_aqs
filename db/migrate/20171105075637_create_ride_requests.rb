class CreateRideRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :ride_requests do |t|
      t.integer :customer_id, null: false
      t.integer :driver_id
      t.integer :status_cd, limit: 1
      t.datetime :requested_at, null: false
      t.datetime :started_at
      t.datetime :finished_at
      t.timestamps
    end

    add_index :ride_requests, :customer_id
    add_index :ride_requests, [:driver_id, :status_cd]
    add_index :ride_requests, :status_cd
    add_index :ride_requests, :requested_at
  end
end
