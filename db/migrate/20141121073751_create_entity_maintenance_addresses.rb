class CreateEntityMaintenanceAddresses < ActiveRecord::Migration
  def change
    create_table :entity_maintenance_addresses do |t|
      t.string :line_1
      t.string :line_2
      t.string :city
      t.string :province_or_state
      t.string :country
      t.string :zipcode
      t.references :entity, index: true

      t.timestamps
    end
  end
end
