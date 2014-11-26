require 'rails_helper'

module EntityMaintenance
  RSpec.describe Person, :type => :model do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:prefix) }
  end
end
