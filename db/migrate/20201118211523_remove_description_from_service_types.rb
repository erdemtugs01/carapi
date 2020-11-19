class RemoveDescriptionFromServiceTypes < ActiveRecord::Migration[6.0]
  def change
    remove_column :service_types, :description, :string
  end
end
