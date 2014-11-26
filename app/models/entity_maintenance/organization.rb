module EntityMaintenance
  class Organization < Entity
    validates :name, :presence => true
    validates :name, :uniqueness => true
  end
end
