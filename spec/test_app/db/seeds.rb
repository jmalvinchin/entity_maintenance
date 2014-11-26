EntityMaintenance::Person.populate(20) do |person|
  person.first_name = Faker::Name.first_name
  person.last_name = Faker::Name.last_name
  person.prefix = Faker::Name.prefix

  EntityMaintenance::Address.populate(2) do |address|
    address.entity_id = person.id
    address.line_1 = Faker::Address.street_address
    address.line_2 = Faker::Address.secondary_address
    address.city = Faker::Address.city
    address.province_or_state = Faker::Address.state
    address.country = Faker::Address.country
    address.zipcode = Faker::Address.zip
  end

  EntityMaintenance::ContactInfo.populate(3) do |contact_info|
    contact_info.entity_id = person.id
    contact_info.contact_number = Faker::PhoneNumber.cell_phone
    contact_info.contact_type = %w(Mobile Home Work)
  end
end

EntityMaintenance::Organization.populate(20) do |org|
  org.name = Faker::Company.name
  org.industry = Faker::Commerce.department

  EntityMaintenance::Address.populate(2) do |address|
    address.entity_id = org.id
    address.line_1 = Faker::Address.street_address
    address.line_2 = Faker::Address.secondary_address
    address.city = Faker::Address.city
    address.province_or_state = Faker::Address.state
    address.country = Faker::Address.country
    address.zipcode = Faker::Address.zip
  end

  EntityMaintenance::ContactInfo.populate(3) do |contact_info|
    contact_info.entity_id = org.id
    contact_info.contact_person = Faker::Name.name
    contact_info.contact_number = Faker::PhoneNumber.cell_phone
    contact_info.contact_type = %w(Mobile Home Work)
  end
end
