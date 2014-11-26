module EntityMaintenance
  class Entity < ActiveRecord::Base
    has_many :addresses
    has_many :contact_infos
  end
end
