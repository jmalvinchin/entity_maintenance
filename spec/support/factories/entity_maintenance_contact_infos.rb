FactoryGirl.define do
  factory :entity_maintenance_contact_info, :class => 'EntityMaintenance::ContactInfo' do
    contact_number Faker::PhoneNumber.cell_phone
    contact_type 'Mobile'
    association :entity, :factory => :person
  end

end
