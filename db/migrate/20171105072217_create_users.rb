class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :type, null: false
    end

    add_index :users, [:type, :id]
  end
end
