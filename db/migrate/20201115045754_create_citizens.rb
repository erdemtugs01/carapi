class CreateCitizens < ActiveRecord::Migration[6.0]
  def change
    create_table :citizens do |t|
      t.string :register_no
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :address
      t.datetime :discarded_at

      t.timestamps
    end
  end
end
