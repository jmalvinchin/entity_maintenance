# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(:version => 20_141_121_073_751) do

  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'entity_maintenance_addresses', :force => true do |t|
    t.string 'line_1'
    t.string 'line_2'
    t.string 'city'
    t.string 'province_or_state'
    t.string 'country'
    t.string 'zipcode'
    t.integer 'entity_id'
    t.datetime 'created_at'
    t.datetime 'updated_at'
  end

  add_index 'entity_maintenance_addresses', ['entity_id'], :name => 'index_entity_maintenance_addresses_on_entity_id', :using => :btree

  create_table 'entity_maintenance_contact_infos', :force => true do |t|
    t.string 'contact_person'
    t.string 'contact_type'
    t.string 'contact_number'
    t.integer 'entity_id'
    t.datetime 'created_at'
    t.datetime 'updated_at'
  end

  add_index 'entity_maintenance_contact_infos', ['entity_id'], :name => 'index_entity_maintenance_contact_infos_on_entity_id', :using => :btree

  create_table 'entity_maintenance_entities', :force => true do |t|
    t.string 'type'
    t.string 'first_name'
    t.string 'middle_name'
    t.string 'last_name'
    t.string 'prefix'
    t.string 'name'
    t.string 'industry'
    t.datetime 'created_at'
    t.datetime 'updated_at'
  end

end
