class CreateEntityMaintenanceEntities < ActiveRecord::Migration
  def change
    create_table :entity_maintenance_entities do |t|
      t.string :type

      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :prefix

      t.string :name
      t.string :industry

      t.timestamps
    end
  end
end
