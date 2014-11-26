json.id organization.id
json.name organization.name
json.industry organization.industry

json.contact_infos organization.contact_infos, :id, :contact_type, :contact_number

json.addresses organization.addresses, :partial => 'entity_maintenance/api/addresses/address', :as => :address
