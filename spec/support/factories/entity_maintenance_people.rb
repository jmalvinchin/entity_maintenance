FactoryGirl.define do
  factory :person, :class => 'EntityMaintenance::Person' do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    prefix Faker::Name.prefix
    type EntityMaintenance::Person.to_s
  end

end
