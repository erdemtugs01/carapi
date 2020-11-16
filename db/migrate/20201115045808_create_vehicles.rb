class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.references :citizen
      t.string :make
      t.string :model
      t.string :vin
      t.integer :v_type
      t.integer :manufactured
      t.datetime :imported
      t.datetime :discarded_at

      t.timestamps
    end
  end
end
