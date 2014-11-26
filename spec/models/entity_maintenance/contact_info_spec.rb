require 'rails_helper'

module EntityMaintenance
  RSpec.describe ContactInfo, :type => :model do
    it { should validate_presence_of(:contact_type) }
    it { should validate_presence_of(:contact_number) }
  end
end
