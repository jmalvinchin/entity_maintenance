FactoryGirl.define do
  factory :organization, :class => 'EntityMaintenance::Organization' do
    name Faker::Company.name
    industry Faker::Commerce.department
    type EntityMaintenance::Organization.to_s
  end

end
