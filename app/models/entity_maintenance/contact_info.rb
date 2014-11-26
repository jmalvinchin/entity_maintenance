module EntityMaintenance
  class ContactInfo < ActiveRecord::Base
    belongs_to :entity

    validates :contact_type, :contact_number, :presence => true
  end
end
