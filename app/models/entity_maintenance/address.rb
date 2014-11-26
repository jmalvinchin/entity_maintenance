module EntityMaintenance
  class Address < ActiveRecord::Base
    belongs_to :entity
    validates :line_1, :city, :province_or_state, :country, :zipcode, :presence => true

    def street_address
      "#{line_1} #{line_2 ? line_2 : ''}".strip
    end
  end
end
