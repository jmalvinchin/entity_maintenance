class CreateEntityMaintenanceContactInfos < ActiveRecord::Migration
  def change
    create_table :entity_maintenance_contact_infos do |t|
      t.string :contact_person
      t.string :contact_type
      t.string :contact_number
      t.references :entity, :index => true

      t.timestamps
    end
  end
end
