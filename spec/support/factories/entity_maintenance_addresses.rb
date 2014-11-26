FactoryGirl.define do
  factory :entity_maintenance_address, :class => 'EntityMaintenance::Address' do
    line_1 Faker::Address.street_address
    line_2 Faker::Address.secondary_address
    city Faker::Address.city
    province_or_state Faker::Address.state
    country Faker::Address.country
    zipcode Faker::Address.zip
    association :entity, :factory => :person
  end

end
