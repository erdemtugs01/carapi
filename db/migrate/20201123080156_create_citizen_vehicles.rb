class CreateCitizenVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :citizen_vehicles do |t|
      t.references :citizen, null: false, foreign_key: true
      t.references :vehicle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
