json.id person.id
json.last_name person.last_name
json.first_name person.first_name
json.middle_name person.middle_name
json.prefix person.prefix
json.full_name person.full_name

json.contact_infos person.contact_infos, :id, :contact_type, :contact_number

json.addresses person.addresses, :partial => 'entity_maintenance/api/addresses/address', :as => :address
