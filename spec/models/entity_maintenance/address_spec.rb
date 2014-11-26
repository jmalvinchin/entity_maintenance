require 'rails_helper'

module EntityMaintenance
  RSpec.describe Address, :type => :model do
    it { should validate_presence_of(:line_1) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:province_or_state) }
    it { should validate_presence_of(:country) }
    it { should validate_presence_of(:zipcode) }
  end
end
